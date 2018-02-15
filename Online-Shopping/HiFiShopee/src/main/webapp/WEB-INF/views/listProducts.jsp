<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="container">
	<div class="row">
		<!-- Would be to display sidebar -->
		<div class="col-md-3">
			<%@include file="./templates/sidebar.jsp"%>
		</div>
		<!-- to display the actual products -->
		<div class="col-md-9">
			<!-- Added breadcrumb component -->
			<div class="row">
				<div class="col-lg-12">
					<c:if test="${userClickAllProducts == true}">
						<script>
							window.categoryId = '';
						</script>
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">All Products</li>
						</ol>
					</c:if>
					<c:if test="${userClickCategoryProducts == true}">
						<script>
							window.categoryId = '${category.id}';
						</script>
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active"><a href="${contextRoot}/show/category/${category.id}/products">/${category.name}</a></li>
						</ol>
					</c:if>
				</div>
					<c:if test="${empty productList}">
						<div class="jumbotron col-lg-12 col-md-12">Sorry There are no products to show.</div>
					</c:if>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<c:if test="${!empty productList}">
						<table class="table table-striped table-borderd">
							<thead>
								<tr>
									<th></th>
									<th>Name</th>
									<th>Brand</th>
									<th>Price</th>
									<th>Qty. Available</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${productList}" var="products">
									<tr>
										<td><img src="${images}/${products.code}.jpg" width="20%"
											height="20%" class="img-responsive" /></td>
										<td>${products.name}</td>
										<td>${products.brand}</td>
										<td>${products.unitPrice}</td>
										<td>${products.quantity}</td>
										<td><a href="${contextRoot}/show/${products.id}/product" class="btn btn-primary">View</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>