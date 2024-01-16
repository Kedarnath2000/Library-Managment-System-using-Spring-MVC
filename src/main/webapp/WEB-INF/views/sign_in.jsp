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
body {
	background-color: rgb(235, 202, 218);
}

#box5 {
	border: 1px solid;
	margin-top: 40%;
}

#btn1 {
	margin-left: 40%;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">
				<div class="container bg-secondary border rounded   " id="box5">
					<form action="sign_in" method="post">
						<div class="mb-3 mt-3">
							<label for="email" class="form-label text-white fs-5 ">UserName*</label>
							<input type="text" class="form-control" id="email"
								placeholder="Enter email" name="userName" required="true" >
						</div>
						<div class="mb-3 mt-3">
							<label for="email" class="form-label text-white fs-5 ">Email*</label>
							<input type="text" class="form-control" id="email"
								placeholder="Enter email" name="email" required="true" >
						</div>
						<div class="mb-3">
							<label for="pwd" class="form-label text-white fs-5 ">Password*</label>
							<input type="text" class="form-control" id="pwd"
								placeholder="Enter password" name="password" required="true" >
						</div>

						<button type="submit" class="btn btn-primary mb-3 " id="btn1">Sign
							In</button>
				</div>

				</form>

			</div>

		</div>
		<div class="col-4"></div>
	</div>
	</div>

</body>
</html>