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

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="first-slide img-fluid" src="${images}/banners/b1.jpg"
					alt="First slide">
				<div class="container">
					<div class="carousel-caption text-left">
						<p>
							<a class="btn btn-lg btn-primary" href="#register" role="button">Sign
								Up</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img class="second-slide img-fluid" src="${images}/banners/b2.jpg"
					alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<p>
							<a class="btn btn-lg btn-primary" href="#signin" role="button">Sign
								In</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#myCarousel" role="button"
			data-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#myCarousel" role="button"
			data-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>

	<div class="container">
		<div id="register" style="padding-top: 140px; padding-bottom: 140px;">

			<form class="form-horizontal" action='' method="POST">
				<fieldset>
					<div id="legend">
						<legend class="">Register</legend>
					</div>
					<div class="control-group">
						<!-- Username -->
						<label class="control-label" for="username">Username</label>
						<div class="controls">
							<input type="text" id="username" name="username" placeholder=""
								class="input-xlarge">
							<p class="help-block">Username can contain any letters or
								numbers, without spaces</p>
						</div>
					</div>

					<div class="control-group">
						<!-- E-mail -->
						<label class="control-label" for="email">E-mail</label>
						<div class="controls">
							<input type="text" id="email" name="email" placeholder=""
								class="input-xlarge">
							<p class="help-block">Please provide your E-mail</p>
						</div>
					</div>

					<div class="control-group">
						<!-- Password-->
						<label class="control-label" for="password">Password</label>
						<div class="controls">
							<input type="password" id="password" name="password"
								placeholder="" class="input-xlarge">
							<p class="help-block">Password should be at least 4
								characters</p>
						</div>
					</div>

					<div class="control-group">
						<!-- Password -->
						<label class="control-label" for="password_confirm">Password
							(Confirm)</label>
						<div class="controls">
							<input type="password" id="password_confirm"
								name="password_confirm" placeholder="" class="input-xlarge">
							<p class="help-block">Please confirm password</p>
						</div>
					</div>

					<div class="control-group">
						<!-- Button -->
						<div class="controls">
							<button class="btn btn-success">Register</button>
						</div>
					</div>
				</fieldset>
			</form>
		</div>

		<div id="signin" style="padding-top: 140px; padding-bottom: 140px;">

			<div class="jumbotron">
				<div class="row">
					<div class="col-md-offset-5 col-md-3">
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
			</div>
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
