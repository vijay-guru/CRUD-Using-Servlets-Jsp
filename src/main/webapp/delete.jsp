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
	   int i=UserDao.delete(str);
	   session.removeAttribute("email");
	   session.removeAttribute("list");
   }
%>
<h2>Your Details Deleted Successfully</h2>
<h3 class="text-center">Registration Form</h3>
<div class="container">
    <div class="row justify-content-center align-items-center h-100" style="padding-left: 400px">
        <div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
            <form action="addUser.jsp" method="post">
                <div class="form-group" style="margin-top: 15px">
                   Name : <input class=" form-control-lg" name="name" placeholder="Enter name" type="text">
                </div>
                <div class="form-group">
                    Email : <input class=" form-control-lg" name="email" placeholder="Enter email" type="text">
                </div>
                <div class="form-check">
                  Sex : <label class="form-check-label">
                     <input type="checkbox" name="sex" class="form-check-input" value="male">Male
                     <input type="checkbox" name="sex" class="form-check-input" value="female">Female
                   </label>
                </div>
                <div class="form-group">
                   Country : <input class=" form-control-lg" name="country" placeholder="Enter Country" type="text">
                </div>
                <div class="form-group">
                    Password : <input class=" form-control-lg" name="password" placeholder="Enter password" type="text">
                </div>
                <div class="form-group">
                    <button class=" btn-info btn-lg btn-block">Register</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>