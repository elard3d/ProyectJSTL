<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	PROYECTO JSTL  
</h1>

<P>  The time on the server is ${serverTime}. </P>

	
	<h3>ForEach con CONTROLLER</h3>


	<c:forEach var="producto" items="${listadoProductos }">
		
		<p>${producto.nombre}</p>
	
	</c:forEach>
	
	<hr>
	
	<h3>ForEach como for(int i = 100; i < 550; i++)</h3>
	
	<c:forEach var="i" begin="100" step="10" end="550">
	
	 	Producto <c:out value="${i}"></c:out>
	 
	</c:forEach>
	
	<hr>
	
	<h3>Sentencia IF</h3>
	
	<c:forEach var="producto" items="${listadoProductos}">
		<c:if test="${producto.precio>1000}">
			<p>${producto.nombre} - S/ ${producto.precio}</p>
		</c:if>	
	</c:forEach>
	
	<hr>
	
	<h3>Sentencia CHOOSE - WHEN</h3>
	
	<c:forEach var="producto" items="${listadoProductos}">
		<c:choose>
			<c:when test="${producto.precio<1000}">
				<h5>Producto comodo</h5>
				<p>${producto.nombre} - S/${producto.precio}</p>
			</c:when>
			<c:when test="${producto.precio<2000}">
				<h5>Producto Oferta</h5>
				<p>${producto.nombre} - S/${producto.precio}</p>
			</c:when>
			<c:when test="${producto.precio<3000}">
				<h5>Producto Caro</h5>
				<p>${producto.nombre} - S/${producto.precio}</p>
			</c:when>
			<c:otherwise>
				<h5>Producto Fuera de Rango</h5>
				<p>${producto.nombre} - S/${producto.precio}</p>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<hr>

</body>
</html>
