<%-- 
    Document   : eliminar.jsp
    Created on : 19 jun. 2020, 21:28:25
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Config.*"%>
<%@page import="Dao.*"%>
<!DOCTYPE html>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    UsuarioBD usuario = new UsuarioBD();
    usuario.find(new Usuario(id));
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Eliminar Usuario</title>
    </head>
    <body>
        <div class="container">
            <div class="form-group text-center">         
                <%
                    out.print("<div class='alert alert-danger' role='alert'>");
                    out.println("¿Estas seguro de eliminar a este usuario?");
                    out.print("</div> ");
                %>

                <a href="Index.jsp" type="button" class="btn btn-primary btn-ld">Cancelar</a>
                <a href="Ondelete.jsp?id=<%= id %>" type="button" class="btn btn-danger ">Eliminar</a>
            </div>
        </div>
    </body>
