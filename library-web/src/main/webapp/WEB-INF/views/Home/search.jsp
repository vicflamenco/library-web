<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="/WEB-INF/views/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buscar libro</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
	<div class="row"> <!-- Titulo de la página -->
	    <div class="col-lg-12">
	        <h1 class="page-header">Buscando libro: ${ query } - Coincidencias ${ result.size() }</h1>
	    </div>
	</div>
	<div class="row">
		<div class="col-lg-12">
		<kendo:grid name="librosGrid" pageable="true">
	        <kendo:grid-columns>
	            <kendo:grid-column title="Nombre" field="titulo" />
	            <kendo:grid-column title="Año" field="anio" format="{0000}" />
	            <kendo:grid-column title="Edición" field="edicion" />
	        </kendo:grid-columns>
	        <kendo:dataSource data="${ result }" pageSize="10"/>
	        <kendo:grid-pageable input="true" numeric="true" />
	    </kendo:grid>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>