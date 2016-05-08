<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<link href="<c:url value="/css/kendo.common-bootstrap.min.css" />"  rel="stylesheet" type="text/css"  />
<link href="<c:url value="/css/kendo.bootstrap.min.css" />"  rel="stylesheet" type="text/css"  />
<link href="<c:url value="/css/bootstrap.css" />"  rel="stylesheet" type="text/css" />
<link href="<c:url value="/css/sb-admin-2.css" />"  rel="stylesheet" type="text/css"  />
<link href="<c:url value="/css/font-awesome.css" />"  rel="stylesheet" type="text/css"  />
<link href="<c:url value="/css/metisMenu.css" />"  rel="stylesheet" type="text/css"  />

<script src="<c:url value="/js/jquery.js" />"></script>
<script src="<c:url value="/js/bootstrap.js" />"></script>
<script src="<c:url value="/js/metisMenu.js" />"></script>
<script src="<c:url value="/js/sb-admin-2.js" />"></script>
<script src="<c:url value="/js/kendo.all.min.js" />"></script>

<div id="wrapper">
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Mostrar menu</span> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">Sistema Bibliotecario</a>
		</div>
		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
						<i class="fa fa-user fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
				<ul class="dropdown-menu dropdown-user">
					<li>
						<a href="#"><i class="fa fa-user fa-fw"></i> 
							Perfil de usuario
						</a>
					</li>
					<li>
						<a href="#"><i class="fa fa-gear fa-fw"></i> 
							Ajustes
						</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
							Cerrar sesión
						</a>
					</li>
				</ul> 
			</li>
		</ul>
	
		<jsp:include page="/WEB-INF/views/sidebar.jsp" />
	</nav>

<div id="page-wrapper">