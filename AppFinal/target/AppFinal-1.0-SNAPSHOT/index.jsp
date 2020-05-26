<%-- 
    Document   : index
    Created on : 22 may. 2020, 8:34:28
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>El programa que debió ser</title>
    </head>
    <body>
        <%
                       
            
            if (request.getParameter("numero") != null) {%>
                       <h1> El ciclo del valor ingresado es </h1>
                      
                       <%
                           int numero = Integer.parseInt(request.getParameter("numero"));
                           // out.println(numero);
                           for (int i = 0; i <= numero; i++) {
                               {
                                   out.println(i);
                                   
                               }
                           
                           }
                          %>
                           <form>
                           <input type="hidden"/>
                           <input type="submit" value="regresar"/> 
                       </form>
                        <%   
                       } else {%>
                       <form>
                           <input type="number" name="numero" requiered/>
                           <input type="submit" value="enviar"/>   

                           <h3> no has ingresado ningun numero </h3>
                           <%}
                           %>


    </body>
</html>
