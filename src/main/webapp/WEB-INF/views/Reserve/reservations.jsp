<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="/WEB-INF/views/common.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reservas activas</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div class="row"> <!-- Titulo de la página -->
	    <div class="col-lg-12">
	        <h1 class="page-header">Reservas activas</h1>
	    </div>
	</div>
	<div class="row">
		<div class="col-lg-12">
		
		<c:if test="${reservas.size() <= 0}">
			<p>
				Actualmente no existen reservas activas
			</p>
		</c:if>
		
		<c:if test="${reservas.size() > 0}">
			<kendo:grid id="reservasActivasGrid" name="reservasActivasGrid" pageable="true" scrollable="true" height="450">
	        <kendo:grid-columns>
	        
	        	<kendo:grid-column title="idReserva" field="idReserva" hidden="true"/>
	        	<kendo:grid-column title="Fecha reserva" field="fecha_reserva" format="{0:dd/MM/yyyy (h:mm tt)}" />
	        	<kendo:grid-column title="Fecha expiración" field="fecha_expiracion"  format="{0:dd/MM/yyyy (h:mm tt)}"/>
	        	<kendo:grid-column title="IdLibro_Interno" field="idLibro_interno" hidden="true"/>
	        	<kendo:grid-column title="IdLibro" field="idLibro" hidden="true"/>
				<kendo:grid-column title="Libro" field="tituloLibro" />
				<kendo:grid-column title="Autor" field="nombreAutor" />
				<kendo:grid-column title="Editorial" field="nombreEditorial" />
	            <kendo:grid-column>
		            <kendo:grid-column-command>
		            	<kendo:grid-column-commandItem text="Cancelar" click="cancelReservation"></kendo:grid-column-commandItem>
		            </kendo:grid-column-command>
	            </kendo:grid-column>
	        </kendo:grid-columns>
	        <kendo:dataSource data="${reservas}" pageSize="5"/>
	        <kendo:grid-pageable input="true" numeric="true" />
	    </kendo:grid>
		</c:if>
		
		</div>
	</div>
	
	<script>
	   function cancelReservation(e) {
		   
		   if (confirm("¿Desea cancelar la reserva seleccionada?")){
			   var tr = $(e.currentTarget).closest("tr");
		       var item = $("#reservasActivasGrid").data("kendoGrid").dataItem(tr);
		       var idReserva = item.idReserva;
		       var idLibro_interno = item.idLibro_interno;
		       
		       window.location.href = "cancel.html?reservation=" + idReserva + "&inventory=" + idLibro_interno;   
		   }
	   }
	</script>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>