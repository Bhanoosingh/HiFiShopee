
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<script>
		window.userRole = '${userModel.role}';
	</script>
<header>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		<a class="navbar-brand" href="${contextRoot}/home">HiFiShopee</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="nav navbar-nav mr-auto">
				<li id="home" class="nav-item active"><a class="nav-link"
					href="${contextRoot}/home">Home <span class="sr-only">(current)</span></a>
				</li>
				<li id="about" class="nav-item"><a class="nav-link"
					href="${contextRoot}/about">About</a></li>

				<li id="contact" class="nav-item"><a class="nav-link"
					href="${contextRoot}/contact">Contact</a></li>

				<li id="listProducts" class="nav-item"><a class="nav-link"
					href="${contextRoot}/show/all/products">View Products</a></li>
				<security:authorize access="hasAuthority('ADMIN')">
					<li id="manageProduct" class="nav-item"><a class="nav-link"
						href="${contextRoot}/manage/product">Manage Product</a></li>
				</security:authorize>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<security:authorize access="isAnonymous()">
					<li id="signup" class="nav-item"><a class="nav-link"
						href="${contextRoot}/membership">Sign Up</a></li>
					<li id="login" class="nav-item"><a class="nav-link"
						href="${contextRoot}/login">Login</a></li>
				</security:authorize>
				<security:authorize access="isAuthenticated()">
					<li class="dropdown" id="userModel" class="nav-item"><a
						class="btn btn-default dropdown-toggle nav-link"
						href="javascript:void(0)" id="dropdownMenu1"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
							${userModel.fullName} <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<security:authorize access="hasAuthority('USER')">
								<li id="cart" class="nav-item"><a
									href="${contextRoot}/cart/show"> <span
										class="glyphicon glyphicon-shopping-cart nav-link"></span>&#160;<span
										class="badge">${userModel.cart.cartLines}</span> - &#8377;
										${userModel.cart.grandTotal}
								</a></li>
								<li role="separator" class="divider"></li>
							</security:authorize>
							<li id="logout" class="nav-item"><a class="nav-link"
								href="${contextRoot}/logout">Logout</a></li>
						</ul></li>
				</security:authorize>
			</ul>
		</div>
	</nav>
</header>