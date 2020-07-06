<%-- 
    Document   : passwordfrontend
    Created on : 28 jun. 2020, 20:26:53
    Author     : Light
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Config.*"%>
<%@page import="Dao.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="https://getbootstrap.com/docs/4.5/examples/sign-in/signin.css">
        <title>Formulario Usuario</title>
    </head>
    <body class="fondo-blur">
        <div class="container">
            <div class="form-group">             
                <form class="form-signin" action="editarPass.jsp" method="get">
                    <div class="text-center mb-4">
                        <img class="mb-4 rounded-circle" src="https://www.shareicon.net/data/2016/09/01/822711_user_512x512.png" alt="" width="150">
                        <h1 class="h3 mb-3 font-weight-normal">Cambiar contraseña</h1><br>  
                    </div>
                    <input type="hidden" name="id_usuario" value="<%=request.getParameter("id")%>" />  
                    <div class="form-label-group">
                        <input type="password" name="oldPassword" class="form-control" required placeholder="Contraseña Actual"/> 
                        <label>Contraseña Actual</label>
                    </div>
                    <div class="form-label-group">
                        <input type="password" name="newPassword" class="form-control" required placeholder="Contraseña Nueva"/> 
                        <label>Contraseña Nueva</label>
                    </div>
                    <div class="form-label-group">
                        <input type="password" name="confirmPassword" class="form-control" required placeholder="Confirmar Contraseña"/> 
                        <label>Confirmar Contraseña</label>
                    </div>
                    <br><input type="submit" value="Enviar" class="btn btn-secondary btn-block"/>
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