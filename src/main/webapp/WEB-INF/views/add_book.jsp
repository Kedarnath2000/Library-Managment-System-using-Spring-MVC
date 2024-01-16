<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	

<%@ include file="navigation.jsp" %>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#box1{
	height: 560px;
	width: 500px;
	border: 1px solid;
	box-shadow: 3px 2px 3px 2px rgb(230, 68, 68);
	margin-top: 30px;
	background-color: rgb(215, 140, 140);
}

#box2 {
	height: 500px;
	width: 400px;
	border: 1px solid rgb(215, 140, 140);
	margin-top: 50px;
	margin-left: 25px;
}

.form-group {
	line-height: 250%;
}

body {
	background-color: rgb(235, 202, 218);
}

#submit {
	margin-left: 160px;
	margin-top: 20px;
}

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
</style>

</head>
<body>

	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div class=" container alert alert-success  bg-success " role="alert">
		<h4><%= message %></h4>
	</div>
	<%
	}
	%>

	<div class="container" id="box1">
		<div class="row">
			<div class="col">
				<div class="container-fluid " id="box2">
					<form action="add_book" method="post">
						<div class="form-group">
							<label for="exampleInputEmail1">Book Name*</label> <input
								type="text" name="name" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter book name" required="true">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Book Author*</label> <input
								type="text" name="author" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter book author" required="true">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Book Publisher*</label> <input
								type="text" name="publisher" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter book publisher" required="true">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Book Price*</label> <input
								type="text" name="price" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter book price" required="true">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Book Year*</label> <input
								type="text" name="yop" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter year" required="true">
						</div>
						<div id="submit">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>



</body>
</html>