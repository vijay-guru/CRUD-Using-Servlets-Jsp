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
<h3 class="text-center">Successfully Logged In</h3>
<p class="text-center">You can view or your credentials now</p>
<h3 class="text-center">LogIn Form</h3>
<div class="container">
    <div class="row justify-content-center align-items-center h-100" style="padding-left: 400px">
        <div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
            <form action="logout.jsp" method="post">
                <div class="form-group">
                      <button type="submit" class=" btn-info btn-lg btn-block" >Log Out</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>