<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vta_Pedidos</title>
<!-- <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>   
-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


</head>
<body style="background-color:#bcf1b5;">
<center>
<br>
<h1>Bienvenidos al proyecto</h1>
<br>

<table class="table table-dark table-striped">
<tr>
<td>Id</td>
<td>Nombre</td>
<td>Apellidos</td>
<td>Email</td>
<td>Id del Pedido</td>
<td>Numero del Pedido</td>
<td>Fecha</td>
<td>Importe</td>
<td>Descuento</td>
<td>Id del Cliente</td>
<td>Modificar</td>
<td>Eliminar</td>
</tr>
<c:forEach var="vistapedidoTemp" items="${pedidos}">

<c:url var="linkActualizarPedido" value="/cliente/muestraFormularioActualizarPedido">
	<c:param name="pedidoId" value="${vistapedidoTemp.idpedido}"/>
</c:url>

<c:url var="linkEliminarPedido" value="/cliente/eliminarpedido">
	<c:param name="pedidoId" value="${vistapedidoTemp.idpedido}"/>
</c:url>

<tr>
<td>${vistapedidoTemp.id}</td>
<td>${vistapedidoTemp.nombre}</td>
<td>${vistapedidoTemp.apellido}</td>
<td>${vistapedidoTemp.email}</td>
<td>${vistapedidoTemp.idpedido}</td>
<td>${vistapedidoTemp.numpedido}</td>
<td>${vistapedidoTemp.fecha}</td>
<td>${vistapedidoTemp.importe}</td>
<td>${vistapedidoTemp.descuento}</td>
<td>${vistapedidoTemp.idcliente}</td>
<td><a href="${linkActualizarPedido}"><input type="button" value="Modificar"></a></td>
<td><a href="${linkEliminarPedido}"><input type="button" value="Eliminar" onclick="if(!(confirm('Vas a eliminar un registro. ¿Estás seguro?'))) return false"/></a></td>
</tr>  

</c:forEach>
</table>
<br>
<input type="button" value="Agregar Pedido" onclick="window.location.href='muestraFormularioAgregarPedido'; return false;"/>
<br><br>
<input type="button" value="VER VISTA ARTICULOS ORDEANDO ASCENDENTEMENTE POR NOMBRE" onclick="window.location.href='vta_listaarticulos'; return false;"/>
</center>
</body>
</html>