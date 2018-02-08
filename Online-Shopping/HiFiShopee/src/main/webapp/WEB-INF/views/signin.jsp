<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="${images}/fevicon.png">

<title>HiFiShopee ||${title}</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<!--Pulling Awesome Font -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${css}/carousel.css" rel="stylesheet">
</head>
<body>

	<%@include file="./templates/header.jsp"%>

	<main role="main">

	<div id="signin" style="padding-top: 140px; padding-bottom: 140px;">

		<div class="jumbotron">
			<form action="">
				<div class="row">
					<div class="col-md-offset-12 col-md-12">
						<div class="form-login">
							<h4>Welcome back.</h4>
							<input type="text" id="userName"
								class="form-control input-sm chat-input" placeholder="username" />
							<br /> <input type="text" id="userPassword"
								class="form-control input-sm chat-input" placeholder="password" />
							<br />
							<div class="wrapper">
								<span class="group-btn"> <a href="#"
									class="btn btn-primary btn-md">Sign In <i
										class="fa fa-sign-in"></i></a>
								</span>
							</div>
						</div>

					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- /.container --> <%@include file="./templates/footer.jsp"%>
	</main>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/assets/js/jquery-slim.min.js"><\/script>')
	</script>
	<script src="${js}/popper.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
</body>
</html>
