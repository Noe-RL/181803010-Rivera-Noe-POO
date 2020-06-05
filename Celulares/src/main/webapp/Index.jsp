<%-- 
    Document   : Index
    Created on : 4 jun. 2020, 19:36:08
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
 Connection conexion = null;
    Statement stmt = null;
    ResultSet rs =null;
    //ResultSet rs =null;

    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario UA1</title>
    </head>
    <body>
        <h1><centered> <p style="color:#FF0000";>Éste formulario es parte de mi proyecto CRUD de <b>Celulares</b></centered></h1></p>
        <%
                try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/celulares?serverTimezone=UTC", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("SELECT celulares.id_celular, celulares.Nombre, celulares.Modelo, celulares.Color,celulares.id_marca,catalogomarca.Nombre FROM`celulares` JOIN catalogomarca on celulares.id_marca = catalogomarca.id_marca");
        
        
        out.print("<table frame='box'>");
        %>
    <style>
      table, td {
        border:1px solid black;
      }
    </style>
    
<tr>
    <th><td> <b>Nombre</b></td></th>
    <td><b>Modelo</b></td>
    <td><b>Color</b></td>
    <td><b>Marca</b></td>
</tr>
    <%

 while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString(1) + "</td>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getString(3) + "</td>");
                    out.println("<td>" + rs.getString(4) + "</td>");
                    out.println("<td>" + rs.getString(6) + "</td>");
                    out.println("</tr>");
                }
         out.print("</table>");  
       %>
        <h1><centered> Catalogo <b>MARCAS</b></centered></h1>
        
        <%
        
      
     rs = stmt.executeQuery("SELECT catalogomarca.Nombre FROM`celulares` JOIN catalogomarca on celulares.id_marca = catalogomarca.id_marca");
  
     out.print("<table>");
        
        out.print("<tr>");
        out.print("<td> Nombre </td>");
        out.print("</tr>");
        
        
         while (rs.next()) {
                    out.print("<tr>");
                    
                    out.print("<td>" + rs.getString(1) + "</td>");

                    out.print("</tr>");
                }
         out.print("</table>><br><br>");  
    }
    
    
   catch(Exception e) {
       out.println("ERROR"+ e);
       
   }
            %>
    </body>
</html>
