<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="allcss.jsp" %>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<meta charset="ISO-8859-1">
<title>All Data</title>
</head>

<body >
 <%@include file="nav.jsp" %>

	<h1 style="text-align: center; color: red;">Details</h1>
	
<table  >
 <thead>
   <tr>
	<th>Id</th>
	<th>Name</th>
	<th>Mobile Num</th>
	<th>Email</th>
	<th>Password</th>
	<th>Delete</th>
	<th>Update</th>
	</tr>
  </thead>
  <tbody>
    
    <c:forEach var="emp" items="${e_data}">
	<tr class="table-active">
	 
	<td>${emp.id }</td>
	<td>${emp.name }</td>
	<td>${emp.mob }</td>
	<td>${emp.email }</td>
	<td>${emp.password }</td>
	<td><a href="<c:url value='/Delete/${emp.id }'/>">Delete</a></td>
	<td><a href="<c:url value='/${emp.id }'/>">Update</a></td>
	 
	    </tr>
	
	</c:forEach>
	
 
  </tbody>
</table>
	
	
	
	</table><br><br><br>
	 <div class="container text-center">

	<p style="font-size: 17px"><b> You want To Go DashBoard <b></b><a style=" text-align: center; text-decoration: none; font-size: 20px;"  href="dashboard1">Click Here</a></p>
</div>
</body>
</html>




 