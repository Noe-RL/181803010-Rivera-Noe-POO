<%-- 
    Document   : Index
    Created on : 14 jun. 2020, 11:59:11
    Author     : Light
--%>
<%@page import="java.sql.*"%>
<%@page import="Dao.*"%>
<%@page import="Config.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>-
<!DOCTYPE html>
<%  
    List<Usuario> usuarios = new UsuarioBD().listadousuarios();

    %>    
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/5c4728a2cc.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title> Tabla Usuarios Tarea con Bootstrap4</title>
    </head>
    <body class="fondo-blur">
        <div class="container table-responsive ">
        <h1  class="display-4 text-md-center" >Tabla de usuarios</h1><br>
        <table class="table table-hover table-sm">
            <thead class ="thead-dark">
                <tr>
                    <td colspan="2"><h2 class="text-muted">Usuarios</h2></td>
                    <td colspan ="1" class="text-md-right"><a class ="btn btn-secondary btn-block" href="mostrarusuario.jsp">Registrar</a></td>
                </tr>
        <tr>
            <th scope="col">No.</th>
            <th scope="col">Nombre</th>
            <th scope="col">Contraseña</th>
            <th scope="col">No.Telefónico</th>
            <th scope="col">Opciones</th>
        </tr>
            </thead>
            <tbody>
                <%for(Usuario usuario:usuarios){%>
                <tr><th><%=usuario.getId_usuario()%></th>
                    <td><%=usuario.getUsuario()%></td>
                    <td><%=usuario.getPassword()%></td>
                    <td>+52 <%=usuario.getPhone()%></td>
                    <td><a class="btn btn-outline-dark" href="mostrarusuario.jsp?id=<%=usuario.getId_usuario()%>"><i class="fas fa-user-edit"></i></a>
                    <a class="btn btn-outline-dark" href="passwordfrontend.jsp?id=<%=usuario.getId_usuario()%>"><i class="fas fa-key"></i></a>
                    <a class="btn btn-outline-danger" href="eliminar.jsp?id=<%=usuario.getId_usuario()%>"><i class="fas fa-user-minus"></i></a>
                    <a class="btn btn-danger" href="superdelete.jsp?id=<%=usuario.getId_usuario()%>"><i class="fas fa-minus-circle"></i></a></td>

                </tr>
                <%}%>
            </tbody>
        </table>
        </div>       
        </body>
        
        <style type="text/css">
     <!--   .fondo-blur{
  position: relative;
  overflow: hidden;
  background-image: url(https://img4.goodfon.com/original/1366x768/a/8b/vector-blue-squares-abstract-background-geometric.jpg);
    /* Full height */
  height: 100%;
  /* Center and scale the image nicely */
  background-position:  bottom;
  background-repeat: repeat;
  background-size: auto;
  position: relative;
  overflow: scroll;
}

.fondo-blur::before{
  
  display: block;
  background: inherit;
  position: absolute;
  width: 100%; height: 100%;
  left: 0; top: 0;
  filter: blur(20px);
  transform: scale(1.2,1.4);
} -->
</style>
</html>
