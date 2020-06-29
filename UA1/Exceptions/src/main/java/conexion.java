/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
/**
 *
 * @author Light
 */

public class conexion {
    private Connection conexion = null;
    private static final String localhost = "localhost";
    private static final String usuario = "root";
    private static final String contrasñea = "";
    private static final String bd = "usuarios";
    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ?serverTimezone=UTC", "root", "");
        } catch (Exception e) {
            System.out.println(e + "error");
        } finally {
            return conexion;

        }
    }
}
