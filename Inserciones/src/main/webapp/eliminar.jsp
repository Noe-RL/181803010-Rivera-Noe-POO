<%-- 
    Document   : eliminar.jsp
    Created on : 19 jun. 2020, 21:28:25
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Connection conexionsql = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexionsql = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ?serverTimezone=UTC", "root", "");
        stmt = conexionsql.prepareStatement("SELECT * FROM usuarios WHERE id_usuario=?");
        stmt.setInt(1, id);
        rs = stmt.executeQuery();

        rs.next(); //recibe valor
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Eliminar Usuario</title>
    </head>
    <body>
        <div class="container">
            <div class="form-group">         
                <%
                    out.print("<div class='alert alert-danger' role='alert'>");
                    out.println("¿Estas seguro de eliminar a " + rs.getString("usuario") + "?");
                    out.print("</div> ");
                %>

                <a href="Index.jsp" type="button" class="btn btn-danger btn-ld">Cancelar</a>
                <a href="Ondelete.jsp?id=<%=rs.getInt("id_usuario")%>" type="button" class="btn btn-warning btn-lg">Eliminar</a>
            </div>
        </div>
    </body>

    <%} catch (Exception e) {
                System.out.println(e.getMessage());

            }

        %>