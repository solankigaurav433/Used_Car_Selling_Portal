<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  isELIgnored="false"  pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div align="center">
<h1 style="align:center; color:teal;">Result..!</h1>
 <br>
 </div>
		<table class="table table-hover">
			<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Make</th>
				<th scope="col">Model</th>
				<th scope="col">Year</th>
				<th scope="col">Fuel Type</th>
				<th scope="col">Registration No</th>
				<th scope="col">Price</th>
			</tr>
</thead>
			<c:forEach items="${search}" var="car">
				<tbody>
				    <tr>
					<td>${car.id}</td>
					<td>${car.make}</td>
					<td>${car.model}</td>
					<td>${car.year}</td>
					<td>${car.fuelType}</td>
					<td>${car.registrationNo}</td>
					<td>${car.price}</td>
					
				</tr>
			
			</c:forEach>
	</tbody>
		</table>
	

</body>
</html>