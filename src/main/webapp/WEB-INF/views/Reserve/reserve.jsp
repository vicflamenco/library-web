<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="/WEB-INF/views/common.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reserva de libro</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div class="row"> <!-- Titulo de la página -->
	    <div class="col-lg-12">
	        <h1 class="page-header">${libro.titulo}</h1>
	    </div>
	</div>
	<div class="row">
		<div class="col-lg-12">
		
			<c:if test="${result}">
				<p>
					Reserva del libro realizada con éxito.
				</p>		
				<p>
					La reserva estará activa por 72 horas.
				</p>
			</c:if>
			
			<c:if test="${!result}">
				<p>
					Ocurrió un error al intentar reservar el libro.
				</p>
			</c:if>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<a href="/library-web/Books/book.html?id=${libro.idLibro}" class="btn btn-primary">
				Regresar
			</a>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>