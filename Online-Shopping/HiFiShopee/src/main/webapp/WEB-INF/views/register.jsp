<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:url var="css" value="/resources/css"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="images" value="/resources/images"/>
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
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href="${css}/carousel.css" rel="stylesheet">
</head>
<body>

	<%@include file="./templates/header.jsp"%>

	<main role="main">
	<div class="container">
		<div id="register" style="padding-top:140px;padding-bottom:140px;">
		<div class="jumbotron">
			<form class="form-horizontal" action="/HiFiShopee/Register" method="POST">
  <fieldset>
    <div id="legend">
      <legend class="">Register</legend>
    </div>
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="username">Username</label>
      <div class="controls">
        <input type="text" id="username" name="uname" placeholder="" class="form-control input-sm chat-input">
        <p class="help-block">Username can contain any letters or numbers, without spaces</p>
      </div>
    </div>
 
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="email">E-mail</label>
      <div class="controls">
        <input type="text" id="email" name="email" placeholder="" class="form-control input-sm chat-input">
        <p class="help-block">Please provide your E-mail</p>
      </div>
    </div>
    
    <div class="control-group">
      <!-- Date Of Birth-->
      <label class="control-label" for="dob">Date Of Birth</label>
      <div class="controls">
        <input type="date" id="dob" name="dob"  class="form-control input-sm chat-input">
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="pass">Password</label>
      <div class="controls">
        <input type="password" id="pass" name="pass" placeholder="" class="form-control input-sm chat-input">
        <p class="help-block">Password should be at least 4 characters</p>
      </div>
    </div>
 
 
 
    <div class="control-group">
      <!-- Password -->
      <label class="control-label"  for="passcnfrm">Password (Confirm)</label>
      <div class="controls">
        <input type="password" id="passcnfrm" name="passcnfrm" placeholder="" class="form-control input-sm chat-input">
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
		</div>
	</div>
	<!-- /.container --> 
	<%@include file="./templates/footer.jsp"%>
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