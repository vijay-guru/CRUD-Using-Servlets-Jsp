<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
<link rel="stylesheet" href="index.css">
</head>
<body>
<div class="row container-fluid" style="margin-top: 7px">
   <div class="col-md-3 text-center"><a href="RegisterationForm.html">Register</a></div>
   <div class="col-md-3 text-center"><a href="login.html">Log In</a></div>
   <div class="col-md-3 text-center"><a href="viewLogin.jsp">View</a></div>
   <div class="col-md-3 text-center"><a href="delete.jsp">Delete</a></div>
</div>
<h3 class="text-center">View Form</h3>
 <%@page import="com.crud.userdao.UserDao" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%
   
   if(session.getAttribute("email") == null){
	   response.sendRedirect("login.html");
   }
   else{
	   String str=String.valueOf(session.getAttribute("email"));
	   ArrayList<String>list=UserDao.view(str);
	   session.setAttribute("list", list);
   }
%>
<table class="table table-bordered">
    <thead>
      <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Sex</th>
        <th>Country</th>
      </tr>
    </thead>
    
    <tbody>
    
      <tr>
      <c:forEach items="${list}" var="u"> 
        <td>${u}</td>
        </c:forEach>
      </tr>
      </tbody>
      </table>
</body>
</html>