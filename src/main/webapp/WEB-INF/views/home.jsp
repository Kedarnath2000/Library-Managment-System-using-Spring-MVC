<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="navigation.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<style>

.btn {
	height: 60px;
	width: 200px;
}
</style>
</head>
<body>

	<div align="center" class="container mt-5 ">
		<h1>Welcome to Home Page</h1>
	</div>
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