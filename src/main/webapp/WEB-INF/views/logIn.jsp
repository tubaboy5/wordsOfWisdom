<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
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
<body>

	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 100vh">
			<div class="col-4">
				<div class="card">
					<div class="card-body">
						<form action="" autocomplete="off">
							<div class="form-group">
								<p>Username:</p>
								<input type="text" class="form-control" name="username"
									placeholder="username">
							</div>
							<div class="form-group">
								<p>Password:</p>
								<input type="password" class="form-control" name="password"
									placeholder="password">
							</div>
							<button type="button" id="sendlogin" class="btn btn-primary">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>