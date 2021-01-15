<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			<a class="nav-item nav-link" href="/">Home</a> 
			<a class="nav-item nav-link" href="aboutUs">About Me</a> 
			<a class="nav-item nav-link" href="signUp">Sign Up</a> 
			<a class="nav-item nav-link" href="logIn">Log In</a>
			<a class="nav-item nav-link" href="userList">All Users</a>
			<a
				class="nav-item nav-link" href="addProduct">Add A Product</a>
				<a
				class="nav-item nav-link" href="allProducts">All Products</a>
		</div>
	</div>
</nav>

</head>
<body>
 <div class="container">
	<div class="row justify-content-center align-items-center"
		style="height: 100vh">
		<div class="col-6">
			<div class="card">
				<div class="card-body">
					<form:form method="POST" action="saveProduct"
						modelAttribute="product" autocomplete="off">
						<div class="form-group">
							<label for="Name">Product Name:</label>
							<form:input type="text" path="name" class="form-control"
								id="name" placeholder="Enter Product Name" />
						</div>
						<div class="form-group">
							<label for="description">Product Description:</label>
							<form:input type="text" path="description" class="form-control" id="description"
								placeholder="Enter Product Description" />
						</div>
						<div class="form-group">
							<label for="price">Product Price:</label>
							<form:input type="text" path="price"
								class="form-control" id="price"
								placeholder="Enter Product Price" />
						</div>
						<input type="submit" value="Add Product" id="addProduct"
							class="btn btn-primary"></input>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div> 
</body>
</html>