<%--
Document : texting
Created on : 25 may. 2020, 2:17:09
Author : NOERL
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Clasess.*" %>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h1>NUMEROS ASCENDENTES </h1>
<form action="showing.jsp" method="post">
<%
int num = Integer.parseInt(request.getParameter("n"));
for(int i=0; i<num; i++){
%>
<br><input type="number" name="<%=i%>" requiered/><br>
<%
}
%>
<input type="hidden" name="cantidadN" value="<%=num%>"/>
<br><input type="submit" value="enviar"/><br>
</form>
<%
%>
<a href="index.jsp">Volver al inicio
</body>
</html>