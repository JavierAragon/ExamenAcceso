<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INSERTAR CLIENTES</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>   
</head>
<body>
<center>
<h1>INSERTAR CLIENTE</h1>
<form:form action="insertarCliente" modelAttribute="cliente" method="POST">
<form:hidden path="id"/>
<table border="1">
<tr>
<td>Nombre</td><td><form:input path="nombre"/></td>
</tr>
<tr>
<td>Apellido</td><td><form:input path="apellido"/></td>
</tr>
<tr>
<td>Email</td><td><form:input path="email"/></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Insertar"></td>
</tr>
</table>
</center>
	</form:form>
	
</body>
</html>




