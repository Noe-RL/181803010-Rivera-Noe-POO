<%-- 
    Document   : Index
    Created on : 14 jun. 2020, 11:59:11
    Author     : Light
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>-
<!DOCTYPE html>
<%
    Connection  conexionsql=null;
    PreparedStatement stmt= null;
    ResultSet rs = null;
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexionsql = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ?serverTimezone=UTC","root","");
        stmt = conexionsql.prepareStatement("Select * from usuarios");
        rs= stmt.executeQuery();
    %>    
    }
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title> Tabla Usuarios Tarea con Bootstrap4</title>
    </head>
    <body>
        <div class="container">
        <h2>Usuarios registrados:</h2><br>
        <table class="table table-hover">
            <thead class ="thead-dark">
                <tr>
                    <td colspan="2"><h2>Usuarios</h2></td>
                    <td colspan ="1"><a class ="btn btn-success btn-lg" href="mostrarusuario.jsp">Registrar nuevo</a></td>
                </tr>
        <tr>
            <th>No.</th>
            <th>Nombre</th>
            <th>Contraseña</th>
        </tr>
            </thead>
            <tbody>
                <%while(rs.next()){%>
                <tr><th><%=rs.getInt("id_usuario")%></th>
                    <td><%=rs.getString("usuario")%></td>
                    <td><%=rs.getString("password")%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
<%}catch(SQLException e){
        out.println("Error "+ e.getMessage());
        out.println("Error: "+ e.getMessage());
        }%>
        </div>       
        </body>
</html>
