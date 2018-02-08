    <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <spring:url var="context" value="${pageContext.request.contextPath}"/>
    <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="/HiFiShopee/home">HiFiShopee</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="/HiFiShopee/home">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/HiFiShopee/Register">Register</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/HiFiShopee/SignIn">Sign In</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/HiFiShopee/admin/">Admin</a>
            </li>
          </ul>
        </div>
      </nav>
    </header>