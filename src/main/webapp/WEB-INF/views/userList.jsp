<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
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

	<c:forEach items="${users}" var="user">
${user.username}
${user.name}
${user.age}
${user.telephoneNumber}
${user.email}
${user.password}
</c:forEach>

</body>
</html>