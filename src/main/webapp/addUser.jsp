<%@page import="com.crud.user.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
</head>
<body>
  <%@page import="com.crud.userdao.UserDao" %>
  <jsp:useBean id="u" class="com.crud.user.User"></jsp:useBean> 
  <jsp:setProperty property="*" name="u"/>
  <%
    int i=UserDao.save(u);
     if(i>0){
    	 response.sendRedirect("addUserSuccess.jsp");
     }
     else{
    	 response.sendRedirect("addUserFailed.jsp");
     }
  %>
</body>
</html>