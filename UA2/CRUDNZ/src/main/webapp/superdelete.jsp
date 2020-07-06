<%-- 
    Document   : superdelete
    Created on : 5 jul. 2020, 16:19:35
    Author     : Light
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Dao.UsuarioBD"%>
<%@page import="Config.conexion"%>
<%@page import="Dao.Usuario"%>
<%@page import ="java.util.*"%>

<%
    int id= Integer.parseInt(request.getParameter("id"));
    boolean flag;
    UsuarioBD usuario = new UsuarioBD();
    flag = usuario.Delete(new Usuario(id));
    response.sendRedirect("Index.jsp");
%>