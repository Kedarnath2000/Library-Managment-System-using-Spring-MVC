<%@page import="org.springframework.web.servlet.DispatcherServlet"%>
<html>
<body>

<%
RequestDispatcher requestDispatcher=request.getRequestDispatcher("login");
requestDispatcher.forward(request, response);
%>

</body>
</html>
