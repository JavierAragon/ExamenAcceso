<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pedidos</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>   
</head>
<body>
<center>
<br>
<h1>Bienvenidos al proyecto</h1>
<br>

<table border="1">
<tr>
<td>Id del Pedido</td>
<td>Numero del Pedido</td>
<td>Fecha</td>
<td>Importe</td>
<td>Descuento</td>
<td>Id del Cliente</td>
<td>Modificar</td>
<td>Eliminar</td>
</tr>
<c:forEach var="pedidoTemp" items="${pedidos}">

<c:url var="linkActualizarPedido" value="/cliente/muestraFormularioActualizarPedido">
	<c:param name="pedidoId" value="${pedidoTemp.idpedido}"/>
</c:url>

<c:url var="linkEliminarPedido" value="/cliente/eliminarpedido">
	<c:param name="pedidoId" value="${pedidoTemp.idpedido}"/>
</c:url>

<tr>
<td>${pedidoTemp.idpedido}</td>
<td>${pedidoTemp.numpedido}</td>
<td>${pedidoTemp.fecha}</td>
<td>${pedidoTemp.importe}</td>
<td>${pedidoTemp.descuento}</td>
<td>${pedidoTemp.idcliente}</td>
<td><a href="${linkActualizarPedido}"><input type="button" value="Modificar"></a></td>
<td><a href="${linkEliminarPedido}"><input type="button" value="Eliminar" onclick="if(!(confirm('Vas a eliminar un registro. ¿Estás seguro?'))) return false"/></a></td>
</tr>  

</c:forEach>
</table>
<br>
<input type="button" value="Agregar Pedido" onclick="window.location.href='muestraFormularioAgregarPedido'; return false;"/>
<input type="button" value="VER VISTA PEDIDOS" onclick="window.location.href='vta_listapedidos'; return false;"/>
<input type="button" value="VER ARTICULOS(AÑADIDO EN EL EXAMEN)" onclick="window.location.href='listaarticulos'; return false;"/>
</center>
</body>
</html>