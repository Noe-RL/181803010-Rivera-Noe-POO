<%-- 
    Document   : users
    Created on : 14 jun. 2020, 12:32:51
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Dao.*"%>
<%@page import="Config.conexion"%>
<!DOCTYPE html>
<%
    boolean flag;
    
    UsuarioBD usuario = new UsuarioBD();
    flag = usuario.AddUser(new Usuario(request.getParameter("usuario"), request.getParameter("dndword"), Integer.parseInt(request.getParameter("phone"))));

%>
        
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        
        
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Registro Usuario</title>
        
        </head>
    <body><%
        if(flag=true){ 
        %>
        
        <div class="alert alert-success mt-5 text-center" role="alert">
            Registro completado!
        </div>
        
            <div  class= "lead text-center" >
         <a href="Index.jsp" type="button" class="btn btn-primary btn-ld">Volver al Índice</a>
        
        <a href="mostrarusuario.jsp" type="button" class="btn btn-secondary btn-ld">Registrar usuario nuevo</a>
   </div>
    <%}else{%>
                 <div class="alert alert-danger mt-5 text-center" role="alert">
            Lo sentimos, el registro no pudo ser completado
        </div>
            <div  class= "lead text-center" >
         <a href="Index.jsp" type="button" class="btn btn-primary btn-ld">Volver al Índice</a>
   </div><%}%>
     </body>

    
    
</html>
