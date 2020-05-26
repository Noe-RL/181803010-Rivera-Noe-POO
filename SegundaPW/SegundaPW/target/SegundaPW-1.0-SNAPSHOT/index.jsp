<%-- 
    Document   : index
    Created on : 20 may. 2020, 9:15:29
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi primer formulario</title>
    </head>
    <body>
        <h1>Mi primer formulario</h1>
        <p>
            Este es mi primer formulario en donde conoceré la diferencia entre
            <b> POST y GET</b>
        <form method="POST">
            <input type  = "text" Name="Usuario"/><br>
            <input type  = "password" Name="contraseña"/><br>
            <input type  = "date" name="fechanacimiento"/><br>
            <input type  = "submit" value="Enviar"/>
            
            
        </form>
         <h1> Los datos ingresados son: </h1>
         <%
             
             out.println(request.getParameter("Usuario"));
             out.println(request.getParameter("contraseña"));
             out.println(request.getParameter("fechanacimiento"));
             
             %>
        </p>
    </body>
</html>
