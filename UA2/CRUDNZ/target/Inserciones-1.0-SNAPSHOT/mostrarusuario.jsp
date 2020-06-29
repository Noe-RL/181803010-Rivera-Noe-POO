<%-- 
    Document   : mostrarusuario
    Created on : 15 jun. 2020, 0:13:30
    Author     : Light
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String titulo = "Agregar usuario";
    String usuario = "";
    String idusuario = "";
    int id;
    String phone="";

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        titulo = "Editar Usuario";
        Connection conexionsql = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        String dndword = "";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexionsql = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ?serverTimezone=UTC", "root", "");
            stmt = conexionsql.prepareStatement("SELECT * FROM usuarios WHERE id_usuario=?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();

            rs.next(); //recibe valor
            idusuario = rs.getString("id_usuario");
            usuario = rs.getString("usuario");
            phone=rs.getString("num_telefono");
            dndword = rs.getString("password");
        } catch (Exception e) {
            System.out.println(e.getMessage());

        }
    } else {
        id = 0;

    }


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<title><%=titulo%></title>
    </head>
    <body>
        <div class="container">
            <div class="form-group">         
                <% if(request.getParameter("id")!=null){%>
                <form  action="editarUsuario.jsp" method="GET">
                   <%}else{%>
                   <form action="users.jsp" method="GET"><%}%>
                       
                    <%if(request.getParameter("id")!=null){%>
                    <input type="hidden" name="id_usuario" value="<%=id%>">
                    <%}%>
                    <div>
                    
                        <h1><%=titulo%></h1> 
                    </div>
                    <div class="form-label-group">
                        <label>Usuario</label>
                        <input type="text" name="usuario" value="<%=usuario%>" class="form-control" placeholder="NombreUsuario" required/> 
                        <input type="number" name="No. Telefono" value="<%=phone%>" class="form-control" placeholder="Número telefono +52" required/>
                        
                    </div>
                        <%if (request.getParameter("id") == null) {%>
                    <div class="form-label-group">
                        <label>contraseña</label>
                        <input type="password" name="dndword" class="form-control" required/> 
                        
                    </div>
                    <%}%>
                    <br><input type="submit" value="Enviar" class="btn btn-success btn-block"/>
                    
                    <input type="reset" value="Limpiar" class="btn btn-outline-success btn-block"/>
                </form>
            </div>
        </div>
    </body>
</html>