<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="/WEB-INF/views/common.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenido al sistema bibliotecario</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="row"> 
    <div class="col-lg-12">
        <h1 class="page-header">Sistema bibliotecario</h1> 
    </div>
</div>
<div class="row">
           <div class="col-lg-3 col-md-6">
               <div class="panel panel-primary">
                   <div class="panel-heading">
                       <div class="row">
                           <div class="col-xs-3">
                               <i class="fa fa-book fa-5x"></i>
                           </div>
                           <div class="col-xs-9 text-right">
                               <div class="huge">26</div>
                               <div>Préstamos</div>
                           </div>
                       </div>
                   </div>
                   <a href="#">
                       <div class="panel-footer">
                           <div class="pull-left">Ver detalle</div>
                           <div class="pull-right"><i
			class="fa fa-arrow-circle-right"></i></div>
                           <div class="clearfix"></div>
                       </div>
                   </a>
               </div>
           </div>
           <div class="col-lg-3 col-md-6">
               <div class="panel panel-green">
                   <div class="panel-heading">
                       <div class="row">
                           <div class="col-xs-3">
                               <i class="fa fa-clock-o fa-5x"></i>
                           </div>
                           <div class="col-xs-9 text-right">
                               <div class="huge">12</div>
                               <div>Libros reservados</div>
                           </div>
                       </div>
                   </div>
                   <a href="#">
                       <div class="panel-footer">
                           <div class="pull-left">Ver detalle</div>
                           <div class="pull-right"><i
			class="fa fa-arrow-circle-right"></i></div>
                           <div class="clearfix"></div>
                       </div>
                   </a>
               </div>
           </div>
           <div class="col-lg-3 col-md-6">
               <div class="panel panel-yellow">
                   <div class="panel-heading">
                       <div class="row">
                           <div class="col-xs-3">
                               <i class="fa fa-money fa-5x"></i>
                           </div>
                           <div class="col-xs-9 text-right">
                               <div class="huge">124</div>
                               <div>Multas</div>
                           </div>
                       </div>
                   </div>
                   <a href="#">
                       <div class="panel-footer">
                           <div class="pull-left">Ver detalle</div>
                           <div class="pull-right"><i
			class="fa fa-arrow-circle-right"></i></div>
                           <div class="clearfix"></div>
                       </div>
                   </a>
               </div>
           </div>
           <div class="col-lg-3 col-md-6">
               <div class="panel panel-red">
                   <div class="panel-heading">
                       <div class="row">
                           <div class="col-xs-3">
                               <i class="fa fa-user fa-5x"></i>
                           </div>
                           <div class="col-xs-9 text-right">
                               <div class="huge">Mi Perfil</div>
                               <div>Datos de la cuenta</div>
                           </div>
                       </div>
                   </div>
                   <a href="#">
                       <div class="panel-footer">
                           <div class="pull-left">Ver detalle</div>
                           <div class="pull-right">
                           		<i class="fa fa-arrow-circle-right"></i>
                           	</div>
                           <div class="clearfix"></div>
                       </div>
                   </a>
               </div>
           </div>
    </div>	

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>