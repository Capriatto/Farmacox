/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import Atxy2k.CustomTextField.RestrictedTextField;
import clases.ConsultaEnfermedades;
import java.awt.event.ActionEvent;
import java.util.ArrayList;
import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.JButton;
import javax.swing.JOptionPane;
import javax.swing.event.TableModelEvent;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author capriatto
 */
public final class principal extends javax.swing.JFrame {

    public ResultSet mostrarResultado;
    public ArrayList resultadoConsulta = new ArrayList();
    public ArrayList resultadoConsulta2 = new ArrayList();
    public ArrayList resultadoConsulta3 = new ArrayList();
    public ArrayList enfermedadSintomas = new ArrayList();
    public String primerSintoma;
    public String primerEnfermedad;
    public String enfermedad;
    public String idSintoma;
    public String idGravedad;
    public String idEnfermedad;
    DefaultTableModel model;
    String sql;
    Connection con;
    PreparedStatement prepararConsulta;//Es el canal a través del cual se le envían instrucciones SQL
    String labelNick;

    /**
     * Creates new form principal
     */
    public principal(String nick) throws SQLException {
        initComponents();
        tabla();
        setLocationRelativeTo(null);
        labelNick = nick;
        lblBienvenida.setText("Bienvenid@: " + labelNick);
        llenarCategorias();
        llenarProveedores();
        RestrictedTextField res = new RestrictedTextField(txtCodigoProducto);
        RestrictedTextField res1 = new RestrictedTextField(txtValor);
        RestrictedTextField res2 = new RestrictedTextField(txtValorComercial);
        res.setLimit(3);
        res1.setOnlyNums(true);
        res2.setOnlyNums(true);

    }

    public void accion() throws SQLException {
        try {
            principal princ = new principal(null);
            String nombreProducto = txtNombreProducto.getText().trim();
            String codigoProducto = txtCodigoProducto.getText().trim();
            double valor = Double.parseDouble(txtValor.getText().trim());
            double valorComercial = Double.parseDouble(txtValorComercial.getText());
            int categoriaEscogida = cboCategoria.getSelectedIndex() + 1;
            System.out.println("categoriaEscogida = " + categoriaEscogida);
            int proveedorEscogido = cboProveedor.getSelectedIndex() + 1;
            System.out.println("proveedorEscogido = " + proveedorEscogido);

            Connection con = bd.Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement("insert into producto values (?,?,?,?,?,?)");
            ps.setString(1, codigoProducto);
            ps.setString(2, nombreProducto);
            ps.setDouble(3, valor);
            ps.setDouble(4, valorComercial);
            ps.setInt(5, categoriaEscogida);
            ps.setInt(6, proveedorEscogido);
            ps.executeUpdate();
            lblAviso.setText("¡Producto registrado!.");
            tabla(); //actualizar tabla con el producto nuevo! :)
        } catch (Exception e) {
            lblAviso.setText("No se pudo registrar el producto.");

        }
    }

    public void tabla() throws SQLException {
//        Modelando tabla
        Object columnNames[] = {"Codigo", "Nombre", "Valor", "Valor Comercial", "Categoria", "Proveedor"};
        DefaultTableModel mTableModel = new DefaultTableModel(null, columnNames);
        Tabla.setModel(mTableModel);
//  Conectando con base de datos 
        Connection con = bd.Conexion.getConexion();
        PreparedStatement ps = con.prepareStatement("SELECT pr.id, pr.nombre, precio, precio_comercial, c.nombre, p.nombre_empresa FROM producto pr, categoria c, proveedor  p WHERE pr.estado=1 and pr.categoria_id= c.id and pr.proveedor_id=p.id order by pr.nombre asc");
        ResultSet rs = ps.executeQuery();
        Object[] rows;
        while (rs.next()) {
            rows = new Object[]{rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)};
            //Agregando filas a la tabla
            mTableModel.addRow(rows);
        }

    }

    public void eliminarProducto() {
        try {
            int dialogResult = JOptionPane.showConfirmDialog(null, "¿Esta seguro que desea eliminar este producto?", "Advertencia Farmacox", JOptionPane.YES_NO_OPTION);
            if (dialogResult == JOptionPane.YES_OPTION) {
                DefaultTableModel model = (DefaultTableModel) Tabla.getModel();
                int rowSelected = Tabla.getSelectedRow();
                Connection conexion = bd.Conexion.getConexion();
                Object ahi = model.getValueAt(rowSelected, 0);
                PreparedStatement ps = conexion.prepareStatement("UPDATE producto SET estado=0 where id=".concat(String.valueOf(ahi)));
                ps.executeUpdate();
                model.removeRow(rowSelected);
                tabla();
            }
        } catch (SQLException ex) {
            Logger.getLogger(principal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editarProducto() {
    }

    public void tableChanged(TableModelEvent e) {
        if (e.getType() == TableModelEvent.UPDATE) {
            int col = Tabla.getSelectedColumn();
            int row = Tabla.getSelectedRow();
//do the update query on this row  

            try {
                Connection cone = bd.Conexion.getConexion();
                try (PreparedStatement ps = cone.prepareStatement("UPDATE producto SET id = ?,nombre = ?,precio = ?, precio_comercial=?, estado=?,categoria_id=?. proveedor_id=?  WHERE id = " + row)) {
                    ps.setInt(1, (Integer) Tabla.getValueAt(row, 1));
                    ps.setString(2, (String) Tabla.getValueAt(row, 2));
                    ps.setDouble(3, (Double) Tabla.getValueAt(row, 3));
                    ps.setDouble(4, (Double) Tabla.getValueAt(row, 4));
                    ps.setBoolean(5, (Boolean) Tabla.getValueAt(row, 5));
                    ps.setInt(6, (Integer) Tabla.getValueAt(row, 6));
                    ps.setInt(7, (Integer) Tabla.getValueAt(row, 7));


                    ps.executeUpdate();
                }
                bd.Conexion.liberaConexion(cone);

            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jToolBar1 = new javax.swing.JToolBar();
        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txtCodigoProducto = new javax.swing.JTextField();
        txtNombreProducto = new javax.swing.JTextField();
        txtValor = new javax.swing.JTextField();
        btnGuardarProducto = new javax.swing.JButton();
        txtValorComercial = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        cboCategoria = new javax.swing.JComboBox();
        cboProveedor = new javax.swing.JComboBox();
        jLabel7 = new javax.swing.JLabel();
        jScrollPane3 = new javax.swing.JScrollPane();
        Tabla = new javax.swing.JTable();
        lblAviso = new javax.swing.JLabel();
        btnEliminarProd = new javax.swing.JButton();
        jTabbedPane4 = new javax.swing.JTabbedPane();
        jTabbedPane5 = new javax.swing.JTabbedPane();
        jTabbedPane2 = new javax.swing.JTabbedPane();
        jPanel2 = new javax.swing.JPanel();
        jLabel8 = new javax.swing.JLabel();
        txtPrimerSintoma = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jScrollPane4 = new javax.swing.JScrollPane();
        jtConsulta = new javax.swing.JTable();
        jButton3 = new javax.swing.JButton();
        btnPrueba = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jLabel9 = new javax.swing.JLabel();
        txtEnfermedad = new javax.swing.JTextField();
        jButton5 = new javax.swing.JButton();
        jScrollPane5 = new javax.swing.JScrollPane();
        jtConsultaEnfermedad = new javax.swing.JTable();
        btnPrueba1 = new javax.swing.JButton();
        lblBienvenida = new javax.swing.JLabel();

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        jTable2.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane2.setViewportView(jTable2);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setText("Farmacox");

        jToolBar1.setRollover(true);

        jLabel2.setText("nombre producto:");

        jLabel3.setText("valor :");

        jLabel4.setText("codigo producto:");

        txtValor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtValorActionPerformed(evt);
            }
        });

        btnGuardarProducto.setText("Guardar Producto");
        btnGuardarProducto.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGuardarProductoActionPerformed(evt);
            }
        });

        txtValorComercial.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtValorComercialActionPerformed(evt);
            }
        });

        jLabel5.setText("valor comercial:");

        jLabel6.setText("Categoria:");

        cboCategoria.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cboCategoriaActionPerformed(evt);
            }
        });

        jLabel7.setText("Proveedor:");

        Tabla.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane3.setViewportView(Tabla);

        lblAviso.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        lblAviso.setForeground(new java.awt.Color(0, 153, 255));

        btnEliminarProd.setText("Eliminar prod.");
        btnEliminarProd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEliminarProdActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 547, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(0, 0, Short.MAX_VALUE)
                                .addComponent(lblAviso, javax.swing.GroupLayout.PREFERRED_SIZE, 194, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(btnEliminarProd)
                                .addGap(0, 0, Short.MAX_VALUE))))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jLabel4)
                                .addGap(18, 18, 18)
                                .addComponent(txtCodigoProducto, javax.swing.GroupLayout.PREFERRED_SIZE, 182, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(jLabel3)
                                    .addComponent(jLabel2))
                                .addGap(18, 18, 18)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtNombreProducto, javax.swing.GroupLayout.PREFERRED_SIZE, 182, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtValor, javax.swing.GroupLayout.PREFERRED_SIZE, 182, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jLabel5)
                                .addGap(18, 18, 18)
                                .addComponent(txtValorComercial, javax.swing.GroupLayout.PREFERRED_SIZE, 182, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(45, 45, 45)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel7)
                                    .addComponent(jLabel6))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(cboCategoria, javax.swing.GroupLayout.PREFERRED_SIZE, 152, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cboProveedor, javax.swing.GroupLayout.PREFERRED_SIZE, 152, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addComponent(btnGuardarProducto))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txtCodigoProducto, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6)
                    .addComponent(cboCategoria, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(7, 7, 7)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtNombreProducto, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cboProveedor, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel7))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(txtValor, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(5, 5, 5)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(txtValorComercial, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnGuardarProducto))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 20, Short.MAX_VALUE)
                        .addComponent(lblAviso, javax.swing.GroupLayout.PREFERRED_SIZE, 19, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnEliminarProd)
                        .addGap(150, 150, 150))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 124, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
        );

        jToolBar1.add(jPanel1);

        jTabbedPane1.addTab("Productos", jToolBar1);
        jTabbedPane1.addTab("Registrar venta", jTabbedPane4);
        jTabbedPane1.addTab("Reportes", jTabbedPane5);

        jLabel8.setText("Escriba el sintoma:");

        jButton1.setText("Consultar");

        jButton2.setText("Sintomas ");

        jScrollPane4.setViewportView(jtConsulta);

        jButton3.setText("Sintomas mas comunes");

        btnPrueba.setText("Consultar");
        btnPrueba.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPruebaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(33, 33, 33)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 532, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel8)
                        .addGap(18, 18, 18)
                        .addComponent(txtPrimerSintoma, javax.swing.GroupLayout.PREFERRED_SIZE, 137, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(40, 40, 40)
                        .addComponent(btnPrueba)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton3)))
                .addGap(252, 252, 252)
                .addComponent(jButton1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton2)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8)
                    .addComponent(txtPrimerSintoma, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1)
                    .addComponent(jButton2)
                    .addComponent(jButton3)
                    .addComponent(btnPrueba))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 212, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(40, Short.MAX_VALUE))
        );

        jTabbedPane2.addTab("Sintoma", jPanel2);

        jLabel9.setText("Digite una enfermedad:");

        jButton5.setText("Consultar");

        jScrollPane5.setViewportView(jtConsultaEnfermedad);

        btnPrueba1.setText("Consultar");
        btnPrueba1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPrueba1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGap(36, 36, 36)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane5, javax.swing.GroupLayout.PREFERRED_SIZE, 483, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addComponent(jLabel9)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtEnfermedad, javax.swing.GroupLayout.PREFERRED_SIZE, 158, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnPrueba1)
                        .addGap(385, 385, 385)
                        .addComponent(jButton5)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9)
                    .addComponent(txtEnfermedad, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton5)
                    .addComponent(btnPrueba1))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane5, javax.swing.GroupLayout.PREFERRED_SIZE, 206, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(42, Short.MAX_VALUE))
        );

        jTabbedPane2.addTab("Enfermedad", jPanel3);

        jTabbedPane1.addTab("Consultar enfermedad por sintoma", jTabbedPane2);

        lblBienvenida.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        lblBienvenida.setText("Bienvenid@");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 683, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 171, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 354, Short.MAX_VALUE)
                        .addComponent(lblBienvenida, javax.swing.GroupLayout.PREFERRED_SIZE, 182, javax.swing.GroupLayout.PREFERRED_SIZE))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(19, 19, 19)
                        .addComponent(jLabel1))
                    .addComponent(lblBienvenida, javax.swing.GroupLayout.PREFERRED_SIZE, 26, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 360, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void cboCategoriaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cboCategoriaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cboCategoriaActionPerformed

    private void txtValorComercialActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtValorComercialActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtValorComercialActionPerformed

    private void btnGuardarProductoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGuardarProductoActionPerformed
        try {
            accion();
        } catch (SQLException ex) {
            Logger.getLogger(principal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnGuardarProductoActionPerformed

    private void txtValorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtValorActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtValorActionPerformed

    private void btnEliminarProdActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEliminarProdActionPerformed
        eliminarProducto();        // TODO add your handling code here:
    }//GEN-LAST:event_btnEliminarProdActionPerformed

    private void btnPruebaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnPruebaActionPerformed
 primerSintoma=txtPrimerSintoma.getText();
        consultarCodigo(primerSintoma);

        filtrar();
    }//GEN-LAST:event_btnPruebaActionPerformed

    private void btnPrueba1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnPrueba1ActionPerformed
       enfermedad=txtEnfermedad.getText();
        primerSintoma=idEnfermedad;
        consultarGravedad(enfermedad);
        consultarCodigoEnfermedad(enfermedad);
            
      
        cargar();
    }//GEN-LAST:event_btnPrueba1ActionPerformed
    /**
     * @param args the command line arguments
     */
//    public static void main(String args[]) {
//        /* Set the Nimbus look and feel */
//        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
//        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
//         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
//         */
//        try {
//            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
//                if ("Nimbus".equals(info.getName())) {
//                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
//                    break;
//                }
//            }
//        } catch (ClassNotFoundException ex) {
//            java.util.logging.Logger.getLogger(principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (InstantiationException ex) {
//            java.util.logging.Logger.getLogger(principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (IllegalAccessException ex) {
//            java.util.logging.Logger.getLogger(principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
//            java.util.logging.Logger.getLogger(principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        }
//        //</editor-fold>
//
//        /* Create and display the form */
//        java.awt.EventQueue.invokeLater(new Runnable() {
//            public void run() {
//                new principal(String nick).setVisible(true);
//            }
//        });
//    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable Tabla;
    private javax.swing.JButton btnEliminarProd;
    public javax.swing.JButton btnGuardarProducto;
    private javax.swing.JButton btnPrueba;
    private javax.swing.JButton btnPrueba1;
    private javax.swing.JComboBox cboCategoria;
    public javax.swing.JComboBox cboProveedor;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JTabbedPane jTabbedPane2;
    private javax.swing.JTabbedPane jTabbedPane4;
    private javax.swing.JTabbedPane jTabbedPane5;
    private javax.swing.JTable jTable1;
    private javax.swing.JTable jTable2;
    private javax.swing.JToolBar jToolBar1;
    private javax.swing.JTable jtConsulta;
    private javax.swing.JTable jtConsultaEnfermedad;
    private javax.swing.JLabel lblAviso;
    private javax.swing.JLabel lblBienvenida;
    public javax.swing.JTextField txtCodigoProducto;
    private javax.swing.JTextField txtEnfermedad;
    public javax.swing.JTextField txtNombreProducto;
    private javax.swing.JTextField txtPrimerSintoma;
    public javax.swing.JTextField txtValor;
    public javax.swing.JTextField txtValorComercial;
    // End of variables declaration//GEN-END:variables

    public void llenarCategorias() throws SQLException {
        Connection con = bd.Conexion.getConexion();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select nombre from categoria");

        cboCategoria.removeAllItems();
        while (rs.next()) {
            String descripcion = rs.getString(1);
            cboCategoria.addItem(descripcion);
        }
    }

    public void llenarProveedores() throws SQLException {
        Connection con = bd.Conexion.getConexion();
        Statement sts = con.createStatement();
        ResultSet rse = sts.executeQuery("select nombre_empresa from proveedor");

        cboProveedor.removeAllItems();
        while (rse.next()) {
            String base = rse.getString(1);
            cboProveedor.addItem(base);
        }
    }
    
    public void consultarCodigo(String primerSintoma) {
        sql = "SELECT id FROM sintoma WHERE nombre= ".concat(
                "\'").concat(primerSintoma).concat("\';");
        try {
            con= bd.Conexion.getConexion();
            prepararConsulta = con.prepareStatement(sql);
            mostrarResultado = prepararConsulta.executeQuery();
            while (mostrarResultado.next()) {
                resultadoConsulta.add(mostrarResultado.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConsultaEnfermedades.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("error");
        }

    }

    public void filtrar() {
        String[] titulos = {"POSIBLE ENFERMEDAD","GRAVEDAD","RECOMENDACION"};
        String[] registro = new String[3];
        for (int i = 0; i < resultadoConsulta.size(); i++) {
            idSintoma = String.valueOf(resultadoConsulta.get(i));
        }
        sql = "SELECT e.nombre,g.nombre,p.nombre FROM producto p,enfermedad e,enfermedad_sintoma es,gravedad g,sintoma s "
                + "WHERE s.id ="+idSintoma+"  AND s.id= es.sintoma_id AND e.id= es.enfermedad_id AND p.id=s.producto_id AND g.id=e.gravedad_id GROUP BY e.nombre;";
        try {
            model = new DefaultTableModel(null, titulos);
            con= bd.Conexion.getConexion();
            prepararConsulta = con.prepareStatement(sql);
            mostrarResultado = prepararConsulta.executeQuery();
            while (mostrarResultado.next()) {
                enfermedadSintomas.add(mostrarResultado.getString(1));
                registro[0] = mostrarResultado.getString(1);
                registro[1] = mostrarResultado.getString(2);
                registro[2] = mostrarResultado.getString(3);
                model.addRow(registro);
            }
            jtConsulta.setModel(model);
        } catch (SQLException ex) {
            Logger.getLogger(logica.principal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void cargar() {
        String[] titulos = {"ENFERMEDAD", "GRAVEDAD", "RECOMENDACION"};
        String[] registro = new String[3];
        for (int i = 0; i < resultadoConsulta2.size(); i++) {
            idGravedad = String.valueOf(resultadoConsulta2.get(i));
        }
        for(int i=0;i<resultadoConsulta3.size();i++){
            idEnfermedad=String.valueOf(resultadoConsulta3.get(i));
        }
        sql = "SELECT e.nombre,g.nombre,p.nombre FROM sintoma s,enfermedad e,producto p,gravedad g,enfermedad_sintoma es WHERE e.id= "+idEnfermedad+" AND e.id=es.enfermedad_id AND s.producto_id=p.id AND g.id= "+idGravedad+" AND s.id = es.sintoma_id GROUP BY p.nombre;";
        try {
            model = new DefaultTableModel(null, titulos);
            con= bd.Conexion.getConexion();
            prepararConsulta = con.prepareStatement(sql);
            mostrarResultado = prepararConsulta.executeQuery();
            while (mostrarResultado.next()) {
                registro[0] = mostrarResultado.getString(1);
                registro[1] = mostrarResultado.getString(2);
                registro[2]=mostrarResultado.getString(3);
                model.addRow(registro);
            }
            jtConsultaEnfermedad.setModel(model);
        } catch (SQLException ex) {
            Logger.getLogger(logica.principal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public void consultarGravedad(String enfermedad) {
        sql = "SELECT gravedad_id FROM enfermedad WHERE nombre= ".concat(
                "\'").concat(enfermedad).concat("\';");
        try {
            con= bd.Conexion.getConexion();
            prepararConsulta = con.prepareStatement(sql);
            mostrarResultado = prepararConsulta.executeQuery();
            while (mostrarResultado.next()) {
                resultadoConsulta2.add(mostrarResultado.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConsultaEnfermedades.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("error");
        }

    }
    
     public void consultarCodigoEnfermedad(String primerEnfermedad) {
        sql = "SELECT id FROM enfermedad WHERE nombre= ".concat(
                "\'").concat(primerEnfermedad).concat("\';");
        try {
            con= bd.Conexion.getConexion();
            prepararConsulta = con.prepareStatement(sql);
            mostrarResultado = prepararConsulta.executeQuery();
            while (mostrarResultado.next()) {
                resultadoConsulta3.add(mostrarResultado.getString(1));
                System.out.println(mostrarResultado.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConsultaEnfermedades.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("error");
        }

    }
}
