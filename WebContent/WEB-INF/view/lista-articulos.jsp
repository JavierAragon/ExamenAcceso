<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Articulos</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>   
</head>
<body>
<center>
<br>
<h1>Bienvenidos al proyecto</h1>
<br>

<table border="1">
<tr>
<td>Id del Articulo</td>
<td>Nombre del Articulo</td>
<td>Descripcion del Articulo</td>
<td>Stock del Articulo</td>
<td>Precio del Articulo</td>
<td>Modificar</td>
<td>Eliminar</td>
</tr>
<c:forEach var="articuloTemp" items="${articulos}">

<c:url var="linkActualizarArticulo" value="/cliente/muestraFormularioActualizarArticulo">
	<c:param name="articuloId" value="${articuloTemp.idarticulo}"/>
</c:url>

<c:url var="linkEliminarArticulo" value="/cliente/eliminararticulo">
	<c:param name="articuloId" value="${articuloTemp.idarticulo}"/>
</c:url>

<tr>
<td>${articuloTemp.idarticulo}</td>
<td>${articuloTemp.nomarticulo}</td>
<td>${articuloTemp.descriparticulo}</td>
<td>${articuloTemp.stockarticulo}</td>
<td>${articuloTemp.precioarticulo}</td>
<td><a href="${linkActualizarArticulo}"><input type="button" value="Modificar"></a></td>
<td><a href="${linkEliminarArticulo}"><input type="button" value="Eliminar" onclick="if(!(confirm('Vas a eliminar un registro. ¿Estás seguro?'))) return false"/></a></td>
</tr>  

</c:forEach>
</table>
<br>
<input type="button" value="Agregar Articulo" onclick="window.location.href='muestraFormularioAgregarArticulo'; return false;"/>
<input type="button" value="VER VISTA Articulos(Todavia no creada)" onclick="window.location.href='vta_listaarticulos'; return false;"/>
</center>
</body>
</html>