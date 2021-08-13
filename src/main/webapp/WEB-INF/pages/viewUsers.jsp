<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Users</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div align="center">
<h1 style="align:center; color:teal;">Hey Admin!</h1>
 <br>
 </div>
 
 <table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Phone Number</th>
				<th scope="col">Address</th>
				<th scope="col">Username</th>
				<th scope="col">Password</th>
			</tr>
			</thead>
			<c:forEach items="${admin}" var="us">
				<tbody>
				    <tr>
					<td>${us.id}</td>
					<td>${us.name}</td>
					<td>${us.email}</td>
					<td>${us.phone_number}</td>
					<td>${us.address}</td>
					<td>${us.username}</td>
					<td>${us.password}</td>
					<td><a href="deleteU?id=${us.id}">Delete</a></td>
					
				</tr>
			</c:forEach>
 </tbody>
		</table>
       
</body>
</html>
<%@ include file="footer.jsp"%>