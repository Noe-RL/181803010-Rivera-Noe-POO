<%-- 
    Document   : mostrarusuario
    Created on : 15 jun. 2020, 0:13:30
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<title>USUARIOS</title>
    </head>
    <body>
        <div class="container">
            <div class="form-group">             
                <form class="form-signin" action="users.jsp" method="POST">
                    <div>
                    
                        <h1>Agregar<br>Usuario</h1><br>  
                    </div>
                    <div class="form-label-group">
                        <input type="text" name="usuario" class="form-control" required/>  
                        <label>Usuario</label>
                    </div>
                    <div class="form-label-group">
                        <input type="password" name="dndword" class="form-control" required/> 
                        <label>contraseña</label>
                    </div>
                    <br><input type="submit" value="Enviar" class="btn btn-success btn-block"/>
                    <input type="reset" value="Limpiar" class="btn btn-outline-success btn-block"/>
                </form>
            </div>
        </div>
    </body>
</html>