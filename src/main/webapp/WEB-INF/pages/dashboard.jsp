<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ page isELIgnored="false" %>
     <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
	<style>
	.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.8); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 60%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 70%;
  padding: 10px;
  text-align: center;
}
.bg-image {
  /* The image used */
  background-image: url("image/carBg.png");
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);
  
  /* Full height */
  height: 100%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
body, html {
  height: 75%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
 /*  background-color: lightcyan; */
}

* {
  box-sizing: border-box;
}
h1.b {
	font-family: 'Times New Roman';	
}
h2.c {
	text-align: center;
	color: red;
	font-family:'Times New Roman';
}
p.d {
	text-align: center;
	font-family: inherit;
	font-size: medium;

}
	</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
  <div class="container">
    <a class="navbar-brand" href="#">
          <img style="width:200px; height:80px;" src="<c:url value="/image/logo.jpg"/>"/>
        </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Dashboard
                <span class="sr-only">(current)</span>
              </a>
        </li>
        <sec:authorize access="hasRole('USER')"> 
        <li class="nav-item">
          <a class="nav-link" href="edit?id=${user.id}">Update profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="postCar?id=${user.id}">Post Car</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="searchCar?id=${user.id}">Purchase Car</a>
        </li>
       
        </sec:authorize>
      </ul>
    </div>
  </div>
</nav>
<!-- Try -->
<div class="bg-image"></div>
<div class="bg-text">
<sec:authorize access="hasRole('USER')">
<h1 class="b">ABC Cars Welcomes You </h1>
<h1 class="b">${user.name}</h1>
<h2 class="c">My Profile :</h2>
<p class="d">Name: ${user.name}<br>
    Email: ${user.email}<br>
    Phone number: ${user.phone_number}<br>
    Address: ${user.address}</p>
     </sec:authorize>
     
     <sec:authorize access="hasRole('ADMIN')">
     <h1 class="b">Welcome Admin </h1>
       <p><a href="viewCars"> View Registered Cars</a></p>
       <p><a href="viewUsers"> View Registered Users</a></p><br>
      </sec:authorize> 
      <form action="logout" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" name="Logout" value="Logout"></input>
    </form>
      <%@ include file="footer.jsp"%>
      
</div>
</body>
</html>
