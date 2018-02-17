<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description"
	content="Online Shopping Website Using Spring MVC and Hibernate">
<meta name="author" content="Bhanoo Pratap Singh">
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">

<link rel="icon" href="${images}/fevicon.png">
<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>
<title>HiFiShopee || ${title}</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<!--Pulling Awesome Font -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${css}/carousel.css" rel="stylesheet">
<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>
<body>
	<div class="wrapper">
		<%@include file="./templates/header.jsp"%>


		<!-- Page Content -->

		<div class="content">

			<!-- Loading the home content -->
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Load only when user clicks about -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Load only when user clicks contact -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>

			<!-- Load only when user clicks contact -->
			<c:if
				test="${userClickAllProducts == true or userClickCategoryProducts == true }">
				<%@include file="listProducts.jsp"%>
			</c:if>


			<!-- Load only when user clicks show product -->
			<c:if test="${userClickShowProduct == true}">
				<%@include file="singleProduct.jsp"%>
			</c:if>

			<!-- Load only when user clicks manage product -->
			<c:if test="${userClickManageProduct == true}">
				<%@include file="manageProduct.jsp"%>
			</c:if>

			<!-- Load only when user clicks manage product -->
			<c:if test="${userClickShowCart == true}">
				<%@include file="cart.jsp"%>
			</c:if>

		</div>

		<%@include file="./templates/footer.jsp"%>




		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<!-- jQuery -->
		
		<script src="${js}/jquery.js"></script>
		<script src="${js}/popper.min.js"></script>
		<script src="${js}/bootstrap.min.js"></script>
		<!-- DataTable Plugin -->
		<script src="${js}/jquery.dataTables.js"></script>

		<!-- DataTable Bootstrap Script -->
		<script src="${js}/dataTables.bootstrap.js"></script>

		<!-- DataTable Bootstrap Script -->
		<script src="${js}/bootbox.min.js"></script>

		<script src="${js}/jquery.validate.js"></script>
		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>
</html>
