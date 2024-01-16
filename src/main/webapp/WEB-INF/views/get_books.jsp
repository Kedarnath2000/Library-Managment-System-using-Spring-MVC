<%@page import="com.jspiders.librarymanagmentsystem.pojo.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="navigation.jsp" %>	

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.fluid-container {
	margin: 0 auto;
}

#box1 {
	width: 80%;
	margin-top: 20px;
}

#box2 {
	margin: 0 auto;
}

body {
	background-color: rgb(235, 202, 218);
}

a {
	color: white;
}
</style>
</head>
<body>
	<%
	String message2 = (String) request.getAttribute("message2");
	if (message2 != null) {
	%>
	<div class=" container alert alert-success  bg-success " role="alert">
		<h4><%= message2 %></h4>
	</div>
	<%
	}
	%>
	<div class="container" id="box1">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<div id="box2" class="fluid-container">
					<table class="table table-striped table-dark ">
						<%
						List<Book> books = (List<Book>) request.getAttribute("books");
						if (books != null && books.size() > 0) {
						%>
						<thead>
							<tr>
								<th scope="col">Id</th>
								<th scope="col">Book Name</th>
								<th scope="col">Book Author</th>
								<th scope="col">Book Publisher</th>
								<th scope="col">Price</th>
								<th scope="col">Year Of Publish</th>
								<th scope="col">Action</th>
								<th scope="col" colspan="1"></th>
							</tr>
						</thead>
						<%
						for (Book book : books) {
						%>
						<tbody>
							<tr>
								<th scope="row"><%=book.getId()%></th>
								<td><%=book.getName()%></td>
								<td><%=book.getAuthor()%></td>
								<td><%=book.getPublisher()%></td>
								<td><%=book.getPrice()%></td>
								<td><%=book.getYop()%></td>
								<td><a href="delete_book?id=<%=book.getId()%>"><svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
                                <path
												d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                              </svg></a></td>
								<td><a href="edit?id=<%=book.getId()%>"><svg xmlns="http://www.w3.org/2000/svg"
											width="16" height="16" fill="currentColor"
											class="bi bi-pencil-fill" viewBox="0 0 16 16">
                                <path
												d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z" />
                              </svg></a></td>
							</tr>


						</tbody>
						<%
						}
						%>
						<%
						} else {
						%>
						<div class=" container alert alert-danger bg-danger " role="alert">
							<h4>Books Not Found</h4>
						</div>
						<%
						}
						%>
					</table>
				</div>
			</div>
		</div>
	</div>


	</div>
</body>
</html>