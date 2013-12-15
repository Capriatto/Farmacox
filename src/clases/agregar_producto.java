package clases;
import interfaces.principal;
import java.lang.String;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author capriatto
 */
public class agregar_producto {
  principal prin= new principal(null);
   
    public void accion(){
   principal princ= new principal( null);
   String nombreProducto=princ.txtNombreProducto.getText().trim();
   String codigoProducto = princ.txtCodigoProducto.getText().trim();
   double valor=Double.parseDouble(princ.txtValor.getText().trim());
   double valorComercial= Double.parseDouble(princ.txtValorComercial.getText().trim());
 
    }
    
    public void llenarCombo() throws SQLException{
         ArrayList array= new ArrayList();
         Connection con= clases.Conexion.getConexion();
         Statement st= con.createStatement();
         ResultSet rs=st.executeQuery("select nombre from categoria");
         
        for (int i = 0; rs.next(); i++) {
          array.add(rs.getString(i));
          prin.cboCategoria.addItem(array.get(i));
         }
    }
    
}
