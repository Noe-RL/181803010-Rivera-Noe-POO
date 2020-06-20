<%-- 
    Document   : Ondelete
    Created on : 19 jun. 2020, 21:33:53
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    Connection conexionsql = null;
    PreparedStatement stmt=null;
    ResultSet rs=null;
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexionsql = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ?serverTimezone=UTC","root","");
        stmt = conexionsql.prepareStatement("DELETE * FROM usuarios WHERE id_usuario=?");//Aca son los parametros de usuario y contraseña con MD5
        stmt.setInt(1, Integer.parseInt(request.getParameter("id_usuario"))); //acá creo que STMT es el que hace todas las acciones
        stmt.executeUpdate();
        
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Usuario eliminado</title>
        
        </head>
    <body>
        <div class="alert alert-success" role="alert">
            USUARIO ELIMINADO.
        
        <a href="Index.jsp" type="button" class="btn btn-success btn-ld">Volver al Índice</a>
        </div>
    </body>
    <%}catch(SQLException e){%>
    <div class="alert alert-danger" role"alert">
        <%out.println("Error: " + e.getMessage());%>
    </div>
    <%}%>
    