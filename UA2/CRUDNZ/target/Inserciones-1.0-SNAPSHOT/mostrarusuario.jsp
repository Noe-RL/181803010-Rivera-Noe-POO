<%-- 
    Document   : mostrarusuario
    Created on : 15 jun. 2020, 0:13:30
    Author     : Light
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Config.*"%>
<%@page import="Dao.*"%>
<%@page import ="java.util.*"%>

<%
    String titulo = "Agregar Usuario";
    int id;

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        titulo = "Editar Usuario";
        
        UsuarioBD usuario = new UsuarioBD();
        usuario.find(new Usuario(id));
    } else {
        id = 0;

    }


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="https://getbootstrap.com/docs/4.5/examples/sign-in/signin.css">
<title><%=titulo%></title>
    </head>
    <body class="fondo-blur">
        <div class="container">
            <div class="form-group">         
                <% if(request.getParameter("id")!=null){%>
                <form class="form-signin" action="OnEdit.jsp" method="POST">
                   <%}else{%>
                   <form class="form-signin" action="OnAddingUser.jsp" method="POST"><%}%>
                                   <div class="text-center mb-4">
                        <img class="mb-4 rounded-circle" src="https://www.shareicon.net/data/2016/09/01/822711_user_512x512.png" alt="" width="150">
                         
                    </div>
                    <%if(request.getParameter("id")!=null){%>
                    <input type="hidden" name="id_usuario" value="<%=id%>">
                    <%}%>
                    <div>
                    
                        <h1 class="display-5 text-md-center"><%=titulo%></h1> 
                    </div>
                    <div class="form-label-group">
                        <label>Usuario</label>
                        <label for="inputusuario" class="sr-only">Password</label>
                        <input type="text" name="usuario" id="inputusuario" class="form-control" placeholder="NombreUsuario" required autofocus/> 
                        <input type="number" name="phone" class="form-control" placeholder="Número telefono +52" required/>
                        
                    </div>
                        <%if (request.getParameter("id") == null) {%>
                    <div class="form-label-group">
                        <label>Contraseña</label>
                        <input type="password" name="dndword" class="form-control" required/> 
                        <small id="passhelp" class="form-text  text-md-left">Tu contraseña es secreta y nunca será compartida con nadie</small>
                    </div>
                    <%}%>
                    <input type="submit" value="Enviar" class="btn btn-secondary btn-block"/>
                    
                    <input type="reset" value="Limpiar" class="btn btn-outline-secondary btn-block"/>
                </form>
            </div>
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
  background-position:  center;
  background-repeat: no-repeat;
  background-size: cover;
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