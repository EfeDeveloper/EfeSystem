/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package configuraciones;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * author Edy39
 */
//Conexión a base de datos MySQL
public class Conexion {

    Connection con;
    String url;
    String user;
    String pass;

    public Conexion() {
        this.pass = "Edwin@2556_74";
        this.user = "root";
        this.url = "jdbc:mysql://localhost:3306/gestorventas";
    }

    public Connection Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException e) {
        }
        return con;
    }

}
