<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clientes</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>   

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
<td>Moficiar</td>
<td>Eliminar</td>
</tr>
<c:forEach var="clienteTemp" items="${clientes}">

<c:url var="linkActualizar" value="/cliente/muestraFormularioActualizar">
	<c:param name="clienteId" value="${clienteTemp.id}"/>
</c:url>

<c:url var="linkEliminar" value="/cliente/eliminar">
	<c:param name="clienteId" value="${clienteTemp.id}"/>
</c:url>

<tr>
<td>${clienteTemp.id}</td>
<td>${clienteTemp.nombre}</td>
<td>${clienteTemp.apellido}</td>
<td>${clienteTemp.email}</td>
<td><a href="${linkActualizar}"><input type="button" value="Modificar"></a></td>
<td><a href="${linkEliminar}"><input type="button" value="Eliminar" onclick="if(!(confirm('Vas a eliminar un registro. ¿Estás seguro?'))) return false"/></a></td>
</tr>  

</c:forEach>
</table>
<br>
<input type="button" value="Agregar Cliente" onclick="window.location.href='muestraFormularioAgregar'; return false;"/>
<input type="button" value="VER VISTA PEDIDOS ORDENADOS POR FECHA DESCENDENTE" onclick="window.location.href='vta_listapedidos'; return false;"/>
<br><br>
<footer>
	   <div class="container-footer-all">  
          
		  <div class="container-body">  
	          <div class="columna1">
			  <h2>Mas información de la compañía</h2>
			  <br><br><br>
			  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
			  <p>Donec in erat nec orci pellentesque placerat et vitae augue.</p>
			  <p>Aenean erat elit, porttitor ut orci ac, gravida efficitur nisi.</p>
			  <p>Donec at felis non lacus condimentum euismod vel eu arcu.</p>
			  <p>Aenean maximus condimentum suscipit. Duis felis augue</p>
			
			  </div>  
		      <div class="columna2">
			     <h2>Redes Sociales</h2>
			     <div class="row">
			         <img src="${pageContext.request.contextPath}/resources/images/facebook.png"> 
					 <label>Siguenos en Facebook</label>
				 </div>
			     <div class="row">
			         <img src="${pageContext.request.contextPath}/resources/images/gorjeo.png"> 
					 <label>Siguenos en Twitter</label>
				 </div>
				 <div class="row">
			         <img src="${pageContext.request.contextPath}/resources/images/instagram.png"> 
					 <label>Siguenos en Instagram</label>
				 </div>
				 <div class="row">
			         <img src="${pageContext.request.contextPath}/resources/images/googleplus.png"> 
					 <label>Siguenos en Google Plus</label>
				 </div>
				 <div class="row">
			         <img src="${pageContext.request.contextPath}/resources/images/youtube.png"> 
					 <label>Siguenos en YouTube</label>
				 </div>
			  </div>  
			  
		      <div class="columna3">
			      <h2>Información Contactos</h2>
				  <div class="row2">
				      <img src="${pageContext.request.contextPath}/resources/images/casita.JPG"> 
			          <label>
					  Madrid,
					  España
					  Albufera
			          Centro Cultural Salmantino
					  </label>
				  </div>  
				  <div class="row2">
				      <img src="${pageContext.request.contextPath}/resources/images/telefono.JPG"> 
			          <label>+34 653212345</label>
				  </div>  
			      <div class="row2">
				      <img src="${pageContext.request.contextPath}/resources/images/email.JPG"> 
			          <label>colegio@gmail.com</label>
				  </div>  
			  
			  </div>  
			</div>
        </div>           
		
		<div class="container-footer">
		  <div class="footer">
	       	   <div class="copyright">
	             Copyright ©2021 Todos los derechos reservados | <a href="salmantino.com">salmantino.com</a>
		       </div>
		       <div class="information">
			       <a href="">Política de Privacidad</a>|
			       <a href="">Términos y Condiciones</a>|
                   <a href="/">Aviso Legal</a>|
                   <a href="/">Quienes somos</a>|
	               <a href="/">Contactar</a>
			   </div>
	       </div>
		 </div>
   </footer>   
</center>
</body>
</html>