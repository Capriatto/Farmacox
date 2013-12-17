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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jucazuse
 */
public class ConsultaEnfermedades {

    public String sql;
    public Connection conection;
    public PreparedStatement prepararConsulta;
    public ResultSet mostrarResultado;
    public String primerSintoma;
    public String segundoSintoma;
    public String tercerSintoma;
    public ArrayList resultadoConsulta = new ArrayList();
    public ArrayList enfermedadSintomas = new ArrayList();

    public ConsultaEnfermedades() throws SQLException {
        this.conection = bd.Conexion.getConexion();
    }

    public void consultarCodigo(String primerSintoma, String segundoSintoma, String tercerSintoma) {
        sql = "SELECT s.id".concat(
                "FROM sintoma s").concat(
                "WHERE s.nombre= \'").concat(primerSintoma).concat("\'").concat(
                "OR s.nombre= \'").concat(segundoSintoma).concat("\'").concat(
                "OR s.nombre= \'").concat(tercerSintoma).concat("\'").concat(";");
        try {
            prepararConsulta = conection.prepareStatement(sql);
            mostrarResultado = prepararConsulta.executeQuery();
            while (mostrarResultado.next()) {
                resultadoConsulta.add(mostrarResultado.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConsultaEnfermedades.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void consultarEnfermedad() {
        primerSintoma = String.valueOf(resultadoConsulta.get(1));
        segundoSintoma = String.valueOf(resultadoConsulta.get(2));
        tercerSintoma = String.valueOf(resultadoConsulta.get(3));
        sql = "SELECT e.nombre".concat(
                "FROM enfermedad e, enfermedad_sintoma es,sintomas s").concat(
                "AND (s.id= \')".concat(primerSintoma).concat("\'").concat(
                "OR s.id= \' ").concat(segundoSintoma).concat("\'").concat(
                "OR s.id= \' ").concat(tercerSintoma).concat("\'"));
        try {
            prepararConsulta = conection.prepareStatement(sql);
            mostrarResultado = prepararConsulta.executeQuery();
            while (mostrarResultado.next()) {
                enfermedadSintomas.add(mostrarResultado.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConsultaEnfermedades.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
