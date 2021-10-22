<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
   <%
     session.removeAttribute("email");
     session.removeAttribute("list");
     response.sendRedirect("login.html");
   %>
</body>
</html>