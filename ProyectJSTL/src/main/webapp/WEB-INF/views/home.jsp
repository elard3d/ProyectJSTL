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


	<c:forEach var="producto" items="${listadoProductos }">
		
		<p>${producto.nombre}</p>
	
	</c:forEach>
	
	<c:forEach var="i" begin="100" step="10" end="550">
	
	 	Producto <c:out value="${i}"></c:out>
	 
	</c:forEach>

</body>
</html>
