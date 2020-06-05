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
        
 

        while(rs.next()){
            for(int i=1; i<7 ; i++){
            out.println( "\t" + rs.getString(i)+ "\n"); 
          }  
        }
       %>
        <h1><centered> Catalogo <b>Celulares</b></centered></h1>
        
        <%
        
      
     rs = stmt.executeQuery("SELECT catalogomarca.Nombre FROM`celulares` JOIN catalogomarca on celulares.id_marca = catalogomarca.id_marca");
            while(rs.next()){
            for(int i=1; i<2 ; i++){
            out.println( "\t" + rs.getString(i)+ "\n"); 
          }  
        }   
    }
    
    
   catch(Exception e) {
       out.println("ERROR"+ e);
       
   }
            %>
    </body>
</html>
