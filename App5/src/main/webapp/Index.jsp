     <%-- 
    Document   : Index
    Created on : 29 may. 2020, 8:59:24
    Author     : Light
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  
 Connection conexion = null;
     Statement stmt = null;
     ResultSet rs = null;
     try {
         Class.forName("com.mysql.jdbc.Driver");
         conexion
                 = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
         stmt = conexion.createStatement();
         rs = stmt.executeQuery("Select * from usuario");
         while (rs.next()) {
             out.print(rs.getInt("id_usuario"));
             out.print(rs.getString("usuario"));
         }
     } catch (SQLException e) {
         switch (e.getErrorCode()) {
             case 0:
                 out.println("Error, LA COLUMNA NO EXISTE");
                 break;
             case 02:
                 out.println("No se encontraron DATOS");
                 break;
             case 1403:
                 out.println("El usuario no fue encontrado / La contraseña es incorrecta");
                 break;
             case 1049:
                 out.println("La base de datos no fue encontrada");
                 break;
             case 007:
                 out.println("Error de sintaxis, Caracter no permitido ");
                 break;
             default:
                 out.println(e.getMessage() + e.getErrorCode());
                 break;
         }


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
