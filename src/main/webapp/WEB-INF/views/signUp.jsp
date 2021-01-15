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
			<a class="nav-item nav-link" href="/">Home</a> <a
				class="nav-item nav-link" href="aboutUs">About Me</a> <a
				class="nav-item nav-link" href="signUp">Sign Up</a> <a
				class="nav-item nav-link" href="logIn">Log In</a> <a
				class="nav-item nav-link" href="userList">All Users</a>
		</div>
	</div>
</nav>

</head>

<div class="container">
	<div class="row justify-content-center align-items-center"
		style="height: 100vh">
		<div class="col-6">
			<div class="card">
				<div class="card-body">
					<form:form method="POST" action="registerUser"
						modelAttribute="user" autocomplete="off">
						<div class="form-group">
							<label for="Name">Name:</label>
							<form:input type="text" path="name" class="form-control"
								id="name" placeholder="Enter name" />
						</div>
						<div class="form-group">
							<label for="Age">Age:</label>
							<form:input type="text" path="age" class="form-control" id="age"
								placeholder="Enter Age" />
						</div>
						<div class="form-group">
							<label for="telephoneNumber">Telephone Number:</label>
							<form:input type="text" path="telephoneNumber"
								class="form-control" id="telephoneNumber"
								placeholder="Enter Telephone Number" />
						</div>
						<div class="form-group">
							<label for="email">Email address:</label>
							<form:input type="email" path="email" class="form-control"
								id="email" placeholder="Enter email" />
						</div>
						<div class="form-group">
							<label for="username">Username:</label>
							<form:input type="text" path="username" class="form-control"
								id="username" placeholder="Enter username" />
						</div>
						<div class="form-group">
							<label for="password">Password:</label>
							<form:input type="password" path="password" class="form-control"
								id="password" placeholder="Password" />
						</div>
						<input type="submit" value="Sign Up" id="sendsignup"
							class="btn btn-primary"></input>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>