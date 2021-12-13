<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INSERTAR PEDIDOS</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>   
</head>
<body>
<center>
<h1>INSERTAR PEDIDO</h1>
<form:form action="insertarPedido" modelAttribute="pedido" method="POST">
<form:hidden path="idpedido"/>
<table border="1">
<tr>
<td>Numero de Pedido</td><td><form:input path="numpedido"/></td>
</tr>
<tr>
<td>Fecha</td><td><form:input path="fecha"/></td>
</tr>
<tr>
<td>Importe</td><td><form:input path="importe"/></td>
</tr>
<tr>
<td>Descuento</td><td><form:input path="descuento"/></td>
</tr>
<tr>
<td>Id del Cliente</td><td><form:input path="idcliente"/></td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Insertar"></td>
</tr>
</table>
</center>
	</form:form>
	
</body>
</html>