<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Online Shopping Website Using Spring MVC and Hibernate">
<meta name="author" content="Bhanoo Pratap Singh">

<link rel="icon" href="${images}/fevicon.png">

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">


<title>HiFiShopee - FlowException</title>

</head>

<body>

	<div class="wrapper">

	    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	        <div class="container">
	            <!-- Brand and toggle get grouped for better mobile display -->
	            <div class="navbar-header">
	                <a class="navbar-brand" href="${contextRoot}/home">Home</a>
	            </div>
			</div>
		</nav>
			
		
		<div class="content">
		
			<div class="container">
			
				<div class="row">
				
					<div class="col-xs-12">
					
						
						<div class="jumbotron">
						
							<h1>Please contact your administrator!</h1>
							<hr/>
						
							<blockquote style="word-wrap:break-word">
								
								${flowExecutionException}
							
							</blockquote>						

							<blockquote style="word-wrap:break-word">
								
								${rootCauseException}
							
							</blockquote>						
						
						</div>
						
											
					</div>					
				
				</div>
			
			</div>
							
		</div>

		
		<%@include file="../../templates/footer.jsp" %>

	</div>
		
	
</body>


</html>