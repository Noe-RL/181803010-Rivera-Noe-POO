<%-- 
    Document   : Index
    Created on : 14 jun. 2020, 11:59:11
    Author     : Light
--%>
<%@page import="java.sql.*"%>
<%@page import="Dao.UsuarioBD"%>
<%@page import="Dao.Usuario"%>
<%@page import ="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>-
<!DOCTYPE html>
<%  
    List<Usuario> usuarios = new UsuarioBD().listadousuarios();

    %>    
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title> Tabla Usuarios Tarea con Bootstrap4</title>
    </head>
    <body>
        <div class="container">
        <h2>Usuarios registrados:</h2><br>
        <table class="table table-hover">
            <thead class ="thead-dark">
                <tr>
                    <td colspan="2"><h2>Usuarios</h2></td>
                    <td colspan ="1"><a class ="btn btn-success btn-lg" href="mostrarusuario.jsp">Registrar nuevo</a></td>
                </tr>
        <tr>
            <th>No.</th>
            <th>Nombre</th>
            <th>Contraseña</th>
            <th>No.Telefónico</th>
            <th>Opciones</th>
        </tr>
            </thead>
            <tbody>
                <%for(Usuario usuario:usuarios){%>
                <tr><th><%=usuario.getId_usuario()%></th>
                    <td><%=usuario.getUsuario()%></td>
                    <td><%=usuario.getPassword()%></td>
                    <td><%=usuario.getPhone()%></td>
                    <td><a class="btn btn-warning btn-block" href="mostrarusuario.jsp?id=<%=usuario.getId_usuario()%>">👤</a></td>
                    <td><a class="btn btn-warning btn-block" href="passwordfrontend.jsp?id=<%=usuario.getId_usuario()%>">🔑</a></td>
                    <td><a class="btn btn-danger btn-block" href="eliminar.jsp?id=<%=usuario.getId_usuario()%>">🗑</a></td>
                    <td><a class="btn btn-danger" href="eliminar.jsp?id=<%=usuario.getId_usuario()%>">Super Delete</a></td>

                </tr>
                <%}%>
            </tbody>
        </table>
        </div>       
        </body>
</html>
