<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="/WEB-INF/views/common.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cancelar reserva</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div class="row"> <!-- Titulo de la página -->
	    <div class="col-lg-12">
	        <h1 class="page-header">Cancelar reserva</h1>
	    </div>
	</div>
	<div class="row">
		<div class="col-lg-12">
		
			<c:if test="${result}">
				<p>
					Reserva del libro cancelada con éxito.
				</p>
			</c:if>
			
			<c:if test="${!result}">
				<p>
					Ocurrió un error al intentar cancelar la reserva.
				</p>
			</c:if>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<a href="/library-web/Reserve/reservations.html" class="btn btn-primary">
				Regresar
			</a>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>