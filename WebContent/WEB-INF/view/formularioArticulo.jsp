<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INSERTAR ARTICULOS</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>   
</head>
<body>
<center>
<h1>INSERTAR ARTICULO</h1>
<form:form action="insertarArticulo" modelAttribute="articulo" method="POST">
<form:hidden path="idarticulo"/>
<table border="1">
<tr>
<td>Nombre del Articulo</td><td><form:input path="nomarticulo"/></td>
</tr>
<tr>
<td>Descripcion del Articulo</td><td><form:input path="descriparticulo"/></td>
</tr>
<tr>
<td>Stock del Articulo</td><td><form:input path="stockarticulo"/></td>
</tr>
<tr>
<td>Precio del Articulo</td><td><form:input path="precioarticulo"/></td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Insertar"></td>
</tr>
</table>
</center>
	</form:form>
	
</body>
</html>