<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<%@page import="com.crud.userdao.UserDao" %>
  <jsp:useBean id="u" class="com.crud.user.User"></jsp:useBean> 
  <jsp:setProperty property="*" name="u"/>
  <%
     int i=UserDao.checkLogin(u);
     if(i==1){
    	 session.setAttribute("email", u.getEmail()); 
    	 response.sendRedirect("LoggedInSuccess.jsp");
     }
     else{
    	 response.sendRedirect("LoggedInFailed.jsp");
     }
  %>
</body>
</html>