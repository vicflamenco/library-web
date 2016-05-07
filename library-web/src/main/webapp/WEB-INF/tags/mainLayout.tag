
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html xmlns:c="http://java.sun.com/jsp/jstl/core"  
xmlns:spring="http://www.springframework.org/tags" 
xmlns:jsp="http://java.sun.com/JSP/Page">


<jsp:directive.attribute name="title" required="true" rtexprvalue="true" description="Title for the page" />

<head>
		<meta charset="utf-8"/>
		<title>${ title }</title>
		<link href="<c:url value="/css/bootstrap.css" />"  rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/sb-admin-2.css" />"  rel="stylesheet" type="text/css"  />
		<link href="<c:url value="/css/font-awesome.css" />"  rel="stylesheet" type="text/css"  />
		<link href="<c:url value="/css/metisMenu.css" />"  rel="stylesheet" type="text/css"  />
		
	</head>
	
	<body>
		<div id="wrapper">
			<jsp:include page="/WEB-INF/views/header.jsp"/>	
			<div id="page-wrapper">
				<div class="row">
	                <div class="col-lg-12">
	                    <h1 class="page-header">${ title }</h1>
	                </div>
            	</div>
				<jsp:doBody />
			</div>
			<jsp:include page="/WEB-INF/views/footer.jsp"/>	
		</div>
		
		<script src="<c:url value="/js/jquery.js" />"></script>
		<script src="<c:url value="/js/bootstrap.js" />"></script>
		<script src="<c:url value="/js/metisMenu.js" />"></script>
		<script src="<c:url value="/js/sb-admin-2.js" />"></script>
		
	</body>
</html>
