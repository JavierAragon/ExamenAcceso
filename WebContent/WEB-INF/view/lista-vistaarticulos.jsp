<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vta_Articulos</title>
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
<td>Id del Articulo</td>
<td>Nombre del Articulo</td>
<td>Descripcion del Articulo</td>
<td>Stock del Articulo</td>
<td>Precio del Articulo</td>
<td>Modificar</td>
<td>Eliminar</td>
</tr>
<c:forEach var="vistaarticuloTemp" items="${articulos}">

<c:url var="linkActualizarArticulo" value="/cliente/muestraFormularioActualizarArticulo">
	<c:param name="articuloId" value="${vistaarticuloTemp.idarticulo}"/>
</c:url>

<c:url var="linkEliminarArticulo" value="/cliente/eliminararticulo">
	<c:param name="articuloId" value="${vistaarticuloTemp.idarticulo}"/>
</c:url>

<tr>
<td>${vistaarticuloTemp.idarticulo}</td>
<td>${vistaarticuloTemp.nomarticulo}</td>
<td>${vistaarticuloTemp.descriparticulo}</td>
<td>${vistaarticuloTemp.stockarticulo}</td>
<td>${vistaarticuloTemp.precioarticulo}</td>

<td><a href="${linkActualizarArticulo}"><input type="button" value="Modificar"></a></td>
<td><a href="${linkEliminarArticulo}"><input type="button" value="Eliminar" onclick="if(!(confirm('Vas a eliminar un registro. ¿Estás seguro?'))) return false"/></a></td>
</tr>  

</c:forEach>
</table>
<br>
<input type="button" value="Agregar Articulo" onclick="window.location.href='muestraFormularioAgregarArticulo'; return false;"/>
</center>
</body>
</html>