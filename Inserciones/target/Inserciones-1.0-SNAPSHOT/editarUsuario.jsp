<%-- 
    Document   : editarUsuario
    Created on : 19 jun. 2020, 8:26:35
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
    Connection conexionsql = null;
    PreparedStatement stmt=null;
    ResultSet rs=null;
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexionsql=DriverManager.getConnection("jdbc:mysql://localhost/usuarios ?serverTimezone=UTC","root","");
        stmt = conexionsql.prepareStatement("UPDATE usuarios SET usuario=? WHERE id_usuario=?");//Aca son los parametros de usuario y contraseña con MD5
        stmt.setString(1, request.getParameter("usuario")); //Acá es donde en realidad se hace la inserción
        stmt.setInt(2, Integer.parseInt(request.getParameter("id_usuario"))); //acá creo que STMT es el que hace todas las acciones
        stmt.executeUpdate();
        
        %>
        
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Editar Usuario</title>
        
        </head>
    <body>
        <div class="alert alert-success" role="alert">
            Edición completado!
        
        <a href="Index.jsp" type="button" class="btn btn-success btn-ld">Volver al Índice</a>
        </div>
    </body>
    <%}catch(SQLException e){%>
    <div class="alert alert-danger" role"alert">
        <%out.println("Error: " + e.getMessage());%>
    </div>
    <%}%>
    