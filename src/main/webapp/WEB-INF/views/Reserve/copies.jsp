<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="/WEB-INF/views/common.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Copias existentes</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div class="row"> <!-- Titulo de la página -->
	    <div class="col-lg-12">
	        <h1 class="page-header">${libro.titulo}</h1>
	        <h3>Copias disponibles en inventario: ${result.size()}</h3>
	    </div>
	</div>
	<div class="row">
		<div class="col-lg-12">
		
		<c:if test="${result.size() <= 0}">
			<p>
				Actualmente no existen copias del libro disponibles en inventario.
			</p>
		</c:if>
		
		<c:if test="${result.size() > 0}">
			<kendo:grid id="copiasExistentesGrid" name="copiasExistentesGrid" pageable="true" scrollable="true" height="450">
	        <kendo:grid-columns>
	        	<kendo:grid-column title="N° Copia" field="numCopia" />
	        	<kendo:grid-column title="ISBN" field="idLibro" hidden="true"/>
	        	<kendo:grid-column title="IdLibro_Interno" field="idLibro_interno" hidden="true"/>
	            <kendo:grid-column title="Título" field="titulo" />
	            <kendo:grid-column title="Estado" field="estado" />
	            <kendo:grid-column>
		            <kendo:grid-column-command>
		            	<kendo:grid-column-commandItem text="Reservar" click="reserveBook"></kendo:grid-column-commandItem>
		            </kendo:grid-column-command>
	            </kendo:grid-column>
	        </kendo:grid-columns>
	        <kendo:dataSource data="${result}" pageSize="5"/>
	        <kendo:grid-pageable input="true" numeric="true" />
	    </kendo:grid>
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
	<script>
	   function reserveBook(e) {
		   var tr = $(e.currentTarget).closest("tr");
	       var item = $("#copiasExistentesGrid").data("kendoGrid").dataItem(tr);
	       var idLibroInterno = item.idLibro_interno;
	       var idLibro = item.idLibro;
	       
	       window.location.href = "reserve.html?book=" + idLibro + "&inventory=" + idLibroInterno; 
	   }
	</script>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>