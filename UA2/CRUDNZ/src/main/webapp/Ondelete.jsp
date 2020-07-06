<%-- 
    Document   : Ondelete
    Created on : 19 jun. 2020, 21:33:53
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Dao.UsuarioBD"%>
<%@page import="Config.conexion"%>
<%@page import="Dao.Usuario"%>
<%@page import ="java.util.*"%>

<%
    int id= Integer.parseInt(request.getParameter("id"));
    boolean flag;
    UsuarioBD usuario = new UsuarioBD();
    flag = usuario.Delete(new Usuario(id));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Usuario eliminado</title>
        
        </head>
    <body>
        <div class="container text-center">
            <div class="alert alert-danger" role"alert">
            USUARIO ELIMINADO.
        
        
        </div>
        <a href="Index.jsp" type="button" class="btn btn-success btn-ld">Volver al Índice</a>
    </body>
    
    </div>
    