package Dao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Light
 */
import Config.conexion;
import java.sql.*;
import java.util.*;


public class UsuarioBD {
    private static final String listado = "SELECT * FROM usuarios";
    
    
    
    //Attrib:
    private Connection conexion =  new conexion().getConexion();   
    private PreparedStatement stmt;
    private ResultSet rs; 
    
    public List <Usuario> listadousuarios() throws SQLException{
        List<Usuario> usuarios = new ArrayList<>();
        this.stmt=this.conexion.prepareStatement(listado);
        this.rs=this.stmt.executeQuery();
        
        while(this.rs.next()){
            usuarios.add(new Usuario(this.rs.getInt("id_usuario"), this.rs.getString("usuario"), this.rs.getString("password"), this.rs.getInt("num_telefono")));
        
            
        }
        return usuarios;
    }
}
