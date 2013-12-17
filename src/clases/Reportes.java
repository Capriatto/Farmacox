/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.sql.Connection;
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
public class Reportes {

    Connection conectar;
    String separador = System.getProperty("file.separator");
    String directorio = System.getProperty("user.dir");
    String contenedorJasper = "src/recursos/";
    String ruta = directorio.concat(separador).concat(contenedorJasper);

    public void reporte(String archivoJasper, String titulo, String nombrePDF) throws SQLException {
        try {
            conectar = bd.Conexion.getConexion();
            JasperReport reporte = (JasperReport) JRLoader.loadObject(ruta.concat(archivoJasper));
            JasperPrint jasperprint = JasperFillManager.fillReport(reporte, null, conectar);
            JasperViewer ver = new JasperViewer(jasperprint, false);
            ver.setTitle(titulo);
            ver.setVisible(true);
            JRExporter exportar = new JRPdfExporter();
            exportar.setParameter(JRExporterParameter.JASPER_PRINT, jasperprint);
            exportar.setParameter(JRExporterParameter.OUTPUT_FILE, new java.io.File("".concat(nombrePDF).concat(".pdf")));
        } catch (JRException ex) {
            Logger.getLogger(Reportes.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
