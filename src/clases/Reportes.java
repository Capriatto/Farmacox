/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporter;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author jucazuse
 */
public class Reportes  extends  Thread{
     /*
     * Contiene la sentencia de la consulta
     */

    public String sql;
     public Connection con;
    /*
     * prepara la consuita
     */
    public PreparedStatement prepararConsulta;
    /*
     * Contiene el resultado de la consulta
     */
    public ResultSet mostrarResultado;
    String descripcion;

    public Reportes() throws SQLException {
        this.con = bd.Conexion.getConexion();
    }
    
    
    
    
    public void reporte() {
        try {
            JasperReport reporte = (JasperReport) JRLoader.loadObject("clientes.jasper");
            JasperPrint jasperprint = JasperFillManager.fillReport(reporte, null,con);
            JasperViewer ver = new JasperViewer(jasperprint, false);
            ver.setTitle("Clientes Hulk Gym");
            ver.setVisible(true);
            JRExporter exportar = new JRPdfExporter();
            exportar.setParameter(JRExporterParameter.JASPER_PRINT, jasperprint);
            exportar.setParameter(JRExporterParameter.OUTPUT_FILE, new java.io.File("Clientes.pdf"));
        } catch (JRException ex) {
            Logger.getLogger(Reportes.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    public void run() {
        reporte();
    }
    
    
}
