<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="/WEB-INF/views/common.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
	<div class="row"> <!-- Titulo de la página -->
	    <div class="col-lg-12">
	        <h1 class="page-header">Sistema bibliotecario</h1>
	    </div>
	</div>
	
	<div class="row"> <!-- Segunda fila donde puede ir contenido, se pueden crear mas filas, mas columnas -->
		<div class="col-lg-12">
			Contenido fila 2, se puede mostrar el datos provenientes del controlador asi: 
			${ objeto.propiedad } o ${ nombrevariable }
		</div>
	</div>
	
	
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>