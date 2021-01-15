<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="#">Navbar</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		<div class="navbar-nav">
			<a class="nav-item nav-link" href="/">Home</a> <a
				class="nav-item nav-link" href="aboutUs">About Me</a> <a
				class="nav-item nav-link" href="signUp">Sign Up</a> <a
				class="nav-item nav-link" href="logIn">Log In</a> <a
				class="nav-item nav-link" href="userList">All Users</a> <a
				class="nav-item nav-link" href="addProduct">Add A Product</a> <a
				class="nav-item nav-link" href="allProducts">All Products</a>
		</div>
	</div>
</nav>

</head>
<body>


	<!-- Search form -->
	<form action="/searchProducts" method="GET">
		<div class="row">
			<div class="col-xs-6 col-md-4" style="padding: 30px; margin: auto">
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Search for Products" name="searchProducts" id="searchProducts" /> <input
						type="submit" value="Search" id="searchProducts"
						class="btn btn-primary"></input>
				</div>
			</div>
		</div>
		</div>
	</form>



	<div>
		<c:forEach items="${products}" var="product">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Product: ${product.name}</h5>
					<p class="card-text">Description: ${product.description}</p>
					<p class="card-text">Price: $${product.price}</p>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>