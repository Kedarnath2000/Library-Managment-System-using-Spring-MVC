<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
h4 {
	font-size: 20px;
	text-align: center;
	line-height: 2px;
}

.alert {
	height: 30px;
	width: 300px;
	margin-top: 20px;
}
body {
	background-color: rgb(235, 202, 218);
}
.btn {
	height: 60px;
	width: 300px;
}
</style>
</head>
<body>

<%
String email=(String)request.getAttribute("admin");
%>

<nav class="navbar navbar-expand-sm bg-dark   navbar-light">
		<div class="container-fluid d-flex justify-content-end ">
			<ul class="navbar-nav">
				<li class="nav-item"><a
					class="nav-link active text-white fs-5 mx-3 p-2" href="home">Home</a>
				</li>
				<li class="nav-item"><a
					class="nav-link text-white fs-5 mx-3 p-2 " href="add_book">Add</a></li>
				<li class="nav-item"><a class="nav-link text-white fs-5 mx-3 "
					href="get_books">Delete</a></li>
				<ul class="navbar-nav">
					<li class="nav-item"><a
						class="nav-link active text-white fs-5 mx-3 " href="get_books">Edit</a></li>
					<li class="nav-item"><a class="nav-link text-white fs-5 mx-3 "
						href="search">Search</a></li>
					<li class="nav-item"><a class="nav-link text-white fs-5 mx-3 "
						href="get_books">All Book</a></li>
						<li class="nav-item"><a class="nav-link text-white fs-5 mx-3 "
						href="delete_admin?email=<%= email %>">Delete Admin</a></li>
						<li class="nav-item"><a class="nav-link text-white fs-5 mx-3 "
						href="log_out">Log Out</a></li>

				</ul>
		</div>
	</nav>
<div align="center" class="container mt-5 ">
		<h1>Welcome to Home Page</h1>
	</div>
<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div class=" container alert alert-success  bg-success text-white" role="alert">
		<h4><%= message %></h4>
	</div>
	<%
	}
	%>
	<div class="container  mt-5">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">
				<div
					class="fluid-container d-flex flex-column align-items-center justify-content-evenly  "
					id="box1">
					<div class="box mt-2 ">
						<button type="button" class="btn btn-secondary">
							<a href="home" class="nav-link text-white fs-4 mx-3 ">Home</a>
						</button>

					</div>
					<div class="box mt-2 ">
						<button type="button" class="btn btn-secondary">
							<a href="add_book" class="nav-link text-white fs-4 mx-3 ">Add</a>
						</button>

					</div>
					<div class="box mt-2 ">
						<button type="button" class="btn btn-secondary">
							<a href="get_books" class="nav-link text-white fs-4 mx-3 ">Delete</a>
						</button>

					</div>
					<div class="box mt-2 ">
						<button type="button" class="btn btn-secondary">
							<a href="get_books" class="nav-link text-white fs-4 mx-3 ">Edit</a>
						</button>

					</div>
					<div class="box mt-2   ">
						<button type="button" class="btn btn-secondary">
							<a href="search" class="nav-link text-white fs-4 mx-3 ">Search</a>
						</button>

					</div>
					<div class="box mt-2  ">
						<button type="button" class="btn btn-secondary">
							<a href="get_books" class="nav-link text-white fs-4 mx-3 ">All Book</a>
						</button>

					</div>
					<div class="box mt-2  ">
						<button type="button" class="btn btn-secondary">
							<a href="delete_admin?email=<%= email %>" class="nav-link text-white fs-4 mx-3 ">Delete Admin</a>
						</button>

					</div>
					<div class="box mt-2  ">
						<button type="button" class="btn btn-secondary">
							<a href="log_out" class="nav-link text-white fs-4 mx-3 ">Log Out</a>
						</button>

					</div>
				</div>
			</div>
			<div class="col-4"></div>
		</div>
	</div>
</body>
</html>