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
    private static final String insert = "INSERT INTO usuarios SET usuario=?, password=md5(?), num_telefono=?";
    private static final String find = "SELECT * FROM usuarios WHERE id_usuario=?";
    private static final String changeusername = "UPDATE usuarios SET usuario=?, num_telefono=? WHERE id_usuario=?";
    private static final String delete = "DELETE FROM usuarios WHERE id_usuario=?";
    private static final String findpassword = "SELECT id_usuario, password FROM usuarios WHERE id_usuario=? and password=md5(?)";
        private static final String findpassword2 = "SELECT password FROM usuarios WHERE id_usuario=?";

    private static final String changepassword = "UPDATE usuarios SET password=md5(?) WHERE id_usuario=?";
    //Atributes
    private Connection conexion = new conexion().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;

    public List<Usuario> listadousuarios() throws SQLException {
        List<Usuario> usuarios = new ArrayList<>();
        this.stmt = this.conexion.prepareStatement(listado);
        this.rs = this.stmt.executeQuery();

        while (this.rs.next()) {
            usuarios.add(new Usuario(this.rs.getInt("id_usuario"), this.rs.getString("usuario"), this.rs.getString("password"), this.rs.getInt("num_telefono")));

        }
        return usuarios;
    }
    //method to register user
    public boolean AddUser(Usuario usuario) throws SQLException {

        this.stmt = this.conexion.prepareStatement(insert);
        this.stmt.setString(1, usuario.getUsuario());
        this.stmt.setString(2, usuario.getPassword());
        this.stmt.setInt(3, usuario.getPhone());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
    //method to find a registered user 
    public int find(Usuario usuario )throws SQLException{
        String idexists = String.valueOf(usuario.getId_usuario());
        if(idexists!=null){
            this.stmt=this.conexion.prepareStatement(find);
            this.stmt.setInt(1, usuario.getId_usuario());
            this.rs=this.stmt.executeQuery();
        }
        return usuario.getId_usuario();
    }
    //method to change an user name and phone not password
    public boolean ChangeUsername(Usuario usuario) throws SQLException{
        this.stmt= this.conexion.prepareStatement(changeusername);
        this.stmt.setString(1,usuario.getUsuario());
        this.stmt.setInt(2, usuario.getPhone());
        this.stmt.setInt(3, usuario.getId_usuario());
         if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }
    //method to actually change password
    public void ChangePassword(Usuario usuario) throws SQLException{
        this.stmt = this.conexion.prepareStatement(changepassword);
        this.stmt.setString(1, usuario.getPassword());
        this.stmt.setInt(2, usuario.getId_usuario());
        this.stmt.executeUpdate();
    }
    
    public boolean Delete(Usuario usuario) throws SQLException {

        this.stmt = this.conexion.prepareStatement(delete);
        this.stmt.setInt(1, usuario.getId_usuario());
        if (this.stmt.executeUpdate() == 1) {
            return true;
        } else {
            return false;
        }
    }

    public boolean findpassword(Usuario usuario) throws SQLException {
        this.stmt = this.conexion.prepareStatement(findpassword);
        this.stmt.setString(2, usuario.getPassword());
        this.stmt.setInt(1, usuario.getId_usuario());
        rs=this.stmt.executeQuery();
        if (rs.next()) {
            return true;
        } else {
            return false;
        }
        
        
        
    }
    
    


              

}
    