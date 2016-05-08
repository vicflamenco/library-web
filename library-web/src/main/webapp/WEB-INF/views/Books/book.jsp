<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="/WEB-INF/views/common.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detalle de libro - ${ libro.titulo }</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
	<div class="row"> <!-- Titulo de la página -->
	    <div class="col-lg-12">
	        <h1 class="page-header">Detalle de libro</h1>
	    </div>
	</div>
	<div class="row">
		<div class="col-lg-8 center-block">
			<div class="panel panel-default">
			  <div class="panel-heading">
			    <h3 class="panel-title">Título: ${ libro.titulo }</h3>
			  </div>
			  <div class="panel-body">
			    <dl>
				    <dt>Titulo</dt>
				    <dd>${ libro.titulo }</dd>
				    <dt>Autor</dt>
				    <dd>${ libro.nombreAutor }</dd>
				    <dt>Año</dt>
				    <dd>${ libro.anio }</dd>
				    <dt>Editorial</dt>
				    <dd>${ libro.nombreEditorial }</dd>
				    <dt>Sinopsis</dt>
				    <dd>${ libro.sinopsis }</dd>
			    </dl>
			  </div>
			  <div class="panel-footer">
			  	<a href="reserve.html" class="btn btn-success">Reservar</a>
			  </div>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>