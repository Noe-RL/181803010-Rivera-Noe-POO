<%-- 
    Document   : eliminar.jsp
    Created on : 19 jun. 2020, 21:28:25
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
    <%String usuario = "";
    String idusuario = "";
    int id;

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        Connection conexionsql = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        String dndword = "";

        try {
        Class.forName("com.mysql.jdbc.Driver");
        conexionsql = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ?serverTimezone=UTC","root","");
            stmt = conexionsql.prepareStatement("SELECT * FROM usuarios WHERE id_usuario=?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();

            rs.next(); //recibe valor
            idusuario = rs.getString("id_usuario");
            usuario = rs.getString("usuario");
            dndword = rs.getString("password");
        } catch (Exception e) {
            System.out.println(e.getMessage());

        }
    } else {
        id = 0;

    }%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Eliminar Usuario</title>
    </head>
    <body>
           <body>
        <div class="container">
            <div class="form-group">         

                <form  action="Ondelete.jsp" method="POST">
                    <%if(request.getParameter("id")!=null){%>
                    <input type="hidden" name="id_usuario" value="<%=id%>">
                    <%}%>
                </form>
            </div>
        </div>
        <div class="alert alert-success" role="alert">
            ¿Desea eliminar el Usuario?
            <br><input type="submit" value="Eliminar" class="btn btn-success btn-block"/>
            <a href="Index.jsp" type="button" class="btn btn-danger btn-ld">Cancelar</a>
        </div>
    </body>

    <%}%>