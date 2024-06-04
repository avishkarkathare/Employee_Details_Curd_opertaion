<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="allcss.jsp" %>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid p-0 m-0 ">
 <%@include file="nav.jsp" %>
<br>
  <h1 class="text-primary text-uppercase text-center mt-3">Update Data</h1>
    <h3 class="text-primary text-uppercase text-center mt-3">Hello ${data.name}, Please Update Your Information</h3>
  <form style="text-align: center;" action="edit/${data.id}" method="post">
	
	
	<input type="hidden" name=id value=${data.id }><br><br> 
 	
	<b>Name </b> <input style="padding: 7px; border-radius: 5px; padding-right: 25px"   type="text" name=name value=${data.name }><br><br> 
 	
	<b>Mobile Num</b> <input  style="padding: 7px; border-radius: 5px; padding-right: 25px"  type="number" name=mob value=${data.mob }><br><br> 
	<b>Email </b> <input style="padding: 7px; border-radius: 5px; padding-right: 25px" type="email" name=email value=${data.email }><br><br> 
	<b>Password </b> <input style="padding: 7px; border-radius: 5px; padding-right: 25px" type="password" name=password value=${data.password }><br><br> 
	
<button  style=" text-align: center; border-radius: 5px; background-color: black; color: white; font-size: 15px; padding: 10px 15px;border: none;  cursor: pointer;  width: 10%;" type="submit">Update</button>
	
	
	</form>
        

 </div><br><br><br>
 
	 <div class="container text-center">
		<p style="font-size: 17px"><b> You want To Go DashBoard  </b><a style=" text-align: center; text-decoration: none; font-size: 20px;"  href=""dashboard2 "">Click Here</a></p>
	</div>
	 
</body>
</html>