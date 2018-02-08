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
	<div class="btn-group" style="margin:0 auto;">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Supplier">Supplier</button>
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Product">Product</button>
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Category">Category</button>
</div>
</div>
</div>
</div>

	<!-- The Modal Supplier -->
<div class="modal fade" id="Supplier">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Modal Heading</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
    
		
			<form class="form-horizontal" action="/HiFiShopee/admin/supplier" method="POST">
  <fieldset>
    <div id="legend">
      <legend>Add Supplier</legend>
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
      <!-- Button -->
      <div class="controls">
        <button class="btn btn-success">Add Supplier</button>
      </div>
    </div>
  </fieldset>
</form>
		
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
<!-- The Modal Product -->
<div class="modal fade" id="Product">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Product</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
       
		
			<form class="form-horizontal" action="/HiFiShopee/admin/product" method="POST">
  <fieldset>
    <div id="legend">
      <legend>Add Product</legend>
    </div>
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="productname">Product Name</label>
      <div class="controls">
        <input type="text" id="productname" name="productname" placeholder="Product Name" class="form-control input-sm chat-input">
        <p class="help-block">Product Name can contain any letters or numbers, without spaces</p>
      </div>
    </div>

    <div class="control-group">
      <!-- Button -->
      <div class="controls">
        <button class="btn btn-success">Add Product</button>
      </div>
    </div>
  </fieldset>
</form>
		
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
	<!-- The Modal Category -->
<div class="modal fade" id="Category">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Category</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
       
		
			<form class="form-horizontal" action="/HiFiShopee/admin/category" method="POST">
  <fieldset>
    <div id="legend">
      <legend>Add Category</legend>
    </div>
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="categoryname">Category name</label>
      <div class="controls">
        <input type="text" id="categoryname" name="categoryname" placeholder="Category Name" class="form-control input-sm chat-input">
        <p class="help-block">Category Name can contain any letters or numbers, without spaces</p>
      </div>
    </div>

    <div class="control-group">
      <!-- Button -->
      <div class="controls">
        <button class="btn btn-success">Add Category</button>
      </div>
    </div>
  </fieldset>
</form>
		
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

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