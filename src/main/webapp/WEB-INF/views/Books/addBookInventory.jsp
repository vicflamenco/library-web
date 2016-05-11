<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="/WEB-INF/views/common.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrando ingreso a inventario</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
	<div class="row"> <!-- Titulo de la página -->
	    <div class="col-lg-12">
	        <h1 class="page-header">Ingreso de libros a inventario</h1>
	    </div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<label>Seleccione un libro:</label>
			<kendo:comboBox name="selectedBook" id="libro"  
							dataValueField="idlibro"  
							dataTextField="titulo" 
							filter="contains" 
							suggest="true">
				<kendo:dataSource data="${ books }" ></kendo:dataSource>				
			</kendo:comboBox>
			<label>Cantidad:</label>
			<kendo:numericTextBox name="quantity" value="1" min="1" decimals="0"></kendo:numericTextBox>
			<input type="submit" id="post" value="Procesar" class="btn btn-success" />
			<div>
				<c:if test="${not empty error}">
				   <h3>${ error }</h3>   
				</c:if>
			</div>
		</div>
	</div>
	<script>
	$("#post").click(function(){
		var libro = $("#libro").data("kendoComboBox");
		alert(libro.text());
		alert(libro.value());
		if (libro.value()){
			$.post("/library-web/Books/addBookInventory.html", {idLibro: libro.value() },function(result){
				alert("enviado");
				window.location.replace("/library-web/");
			});
		}
	});
	</script>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>