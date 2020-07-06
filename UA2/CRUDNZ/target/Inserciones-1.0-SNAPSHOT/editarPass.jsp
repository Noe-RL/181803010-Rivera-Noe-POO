    <%-- 
    Document   : editarPass
    Created on : 28 jun. 2020, 17:46:29
    Author     : Light
--%>
<%@page import="Config.*"%>
<%@page import="Dao.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  

       
        UsuarioBD usuario = new UsuarioBD();
            boolean flag;
            boolean check;
            String option = "";
            boolean Errors = false;
            check = usuario.findpassword(new Usuario(Integer.parseInt(request.getParameter("id_usuario")), request.getParameter("oldPassword")));

            if (check = true) {
                if (request.getParameter("newPassword").equals(request.getParameter("confirmPassword"))) {
                    usuario.ChangePassword(new Usuario(request.getParameter("newPassword"), Integer.parseInt(request.getParameter("id_usuario"))));
                     option = " Registro completado!";
                } else {
                    Errors = true;
                    option = "las contraseñas no coinciden";
                }
            } else {
                Errors = true;
                option = "Lo sentimos, el registro no pudo ser completado, las contraseñas no coinciden.";
            }
               

               

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        
        
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Edición Contraseña</title>
        
        </head>
    <body><%
        if(Errors=true){ 
        %>
        
        <div class="alert alert-danger mt-5 text-center" role="alert">
            <% out.println(option); %>
        </div>
        
            <div  class= "lead text-center" >
         <a href="Index.jsp" type="button" class="btn btn-primary btn-ld">Volver al Índice</a>
        
      
   </div>
    <%}else{%>
                 <div class="alert alert-success mt-5 text-center" role="alert">
            <% out.println(option); %>
        </div>
            <div  class= "lead text-center" >
         <a href="Index.jsp" type="button" class="btn btn-primary btn-ld">Volver al Índice</a>
   </div><%}%>
     </body>

    
    
</html>