<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h4 {
	font-size: 20px;
	text-align: center;
	line-height: 2px;
	color:white;
}

.alert {
	height: 30px;
	width: 300px;
	margin-top: 20px;
}
body {
	background-color: rgb(235, 202, 218);
}
</style>
</head>
<body>
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
						href="log_out">Log Out</a></li>
						
						

				</ul>
		</div>
	</nav>

</body>
</html>