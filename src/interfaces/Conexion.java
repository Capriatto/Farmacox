/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author Brayhan
 */
public class Conexion {
    
        Connection conect = null;

    public Connection conexionBase() {
        try {


            Class.forName("org.gjt.mm.mysql.Driver");
            conect = DriverManager.getConnection("jdbc:mysql://localhost/farmacox", "root", "");

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error " + e);
        }
        return conect;
    }

}
