package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class Conexion {

    private static Connection connection = null;

    public static Connection getConexion() throws SQLException {
        if (Conexion.connection == null) {
            construyendoConexion();
        }
        return Conexion.connection;
    }

    private static void construyendoConexion() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Conexion.connection = DriverManager.getConnection("jdbc:mysql://localhost/farmacox","root","");
            System.out.println("Database connection was successful!");
        } catch (ClassNotFoundException e) {
            System.out.println("ClassNotFoundException(contruyendoConexion)  : " + e.getMessage());
            System.gc();
        } catch (SQLException e) {
            System.out.println("SQLException(contruyendoConexion) : " + e.getMessage());
            System.gc();
            JOptionPane.showMessageDialog(null, e.getMessage(), "No fue Posible Conectar con la Base de Datos", JOptionPane.ERROR_MESSAGE);
            System.exit(0);
        } catch (Exception e) {
            System.out.println(" Exception General (contruyendoConexion) : " + e.getMessage());
            System.gc();
        }

    }

    public static void liberarConexionS(Connection conex) {
        try {
            conex.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static ResultSet consulta(String query) throws SQLException {
        Statement statement = getConexion().createStatement();
        ResultSet rs;
        rs = statement.executeQuery(query);
        
      return rs;
    }

    public static void liberaConexion(Connection conexion) {
        try {
            if (null != conexion) {
                conexion.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void liberarStatement(PreparedStatement p) {
        try {
            if (null != p) {
                p.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
public boolean update(String valores, String id)
    {
        boolean res = false;        
        String q = " UPDATE persona SET " + valores + " WHERE p_id= " + id;
        try {
            try (PreparedStatement pstm = connection.prepareStatement(q)) {
                pstm.execute();
            }
            res=true;
         }catch(SQLException e){            
            System.out.println(e);
        }
        return res;
    }
}