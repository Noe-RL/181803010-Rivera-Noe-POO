<%-- 
    Document   : editarUsuario
    Created on : 19 jun. 2020, 8:26:35
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Dao.*"%>
<%@page import="Config.conexion"%>

<%@page import ="java.util.*"%>
<!DOCTYPE html>
<%
        boolean flag;
        UsuarioBD usuario = new UsuarioBD();
        flag = usuario.ChangeUsername(new Usuario(request.getParameter("usuario"), Integer.parseInt(request.getParameter("phone")), Integer.parseInt(request.getParameter("id_usuario"))));
        %>
        
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Editar Usuario</title>
        
        </head>
    <body>
        <%
        if(flag=true){ 
        %>
        <div class="alert alert-success" role="alert">
            Edición completado!
        
        <a href="Index.jsp" type="button" class="btn btn-success btn-ld">Volver al Índice</a>
        </div>
         <%}else{%>
        <div class="alert alert-success" role="alert">
            Error, no se pudo completar la edición :(
        
        <a href="Index.jsp" type="button" class="btn btn-success btn-ld">Volver al Índice</a>
        </div><%}%>
    </body>
  