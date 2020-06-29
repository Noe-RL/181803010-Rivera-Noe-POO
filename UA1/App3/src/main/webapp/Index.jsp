<%-- 
    Document   : Index
    Created on : 21 may. 2020, 23:52:40
    Author     : Light
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FORMULARIO </title>
    </head>
    <body>
        
        <center> <div class="n"><p>    <b>Esta es la tarea del reporte de formulario en java</b></p><center>
        <P align="center"> formulario de tarea, ingrese numeros </p>

        
        <form method="GET"> 
            <p align="center"> <input type="text" name="numero" required pattern="[0-99999]{1,5}" /> <B>Valores no admitidos</B </p>
            <p align="center"><input type="submit" value="enviar"/></p>
        </form>
        
        <h1 align="center">Los numeros s son</h1><br>


  <%
            try 
            {
                int num = Integer.parseInt(request.getParameter("numero"));
                for (int i = 0; i<= num; i++)
                {
                     out.println("\n" + i); 
                }
            } 
            catch (NumberFormatException nfe)
            {
                out.println("");
            }
            
        %>  

        
    </body>
</html>