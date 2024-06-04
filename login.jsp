<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

</style>
</head>

<body style="text-align: center; background: url('./img/lo1.jpg'); background-repeat: no-repeat; background-size: cover;   background-attachment: fixed;   background-position: center;" >
	<h1 style="text-align: center; color: white;">Login</h1>
	<form action="login" method="get">
	  <i style="color: white; font-size: 20px; padding-right: 9px " class="fa fa-user icon"></i>
	<input style="padding: 7px; border-radius: 5px; padding-right: 25px"  type="email" name="email" placeholder="Enter Email" required="required"><br><br>
	    <i style="color: white; font-size: 20px  ; padding-right: 9px;  " class="fa fa-key icon"></i>
<input style="padding: 7px;border-radius: 5px; padding-right: 25px;    " type="password" name="password" placeholder="password" required="required"><br><br>
<button  style=" text-align: center;    border-radius: 5px; background-color: black; color: white; font-size: 15px; padding: 10px 15px;border: none;  cursor: pointer;  width: 10%;" type="submit"> Login</button>
 	<p style="color: white;font-size: 15px"><b> Did't Have Account </b><a style="text-decoration: none;" href="signup1"><b style="color: blue; font-size: 20px; "> Sign Up</b> </a></p>
	</form>
</body>
</html>
 