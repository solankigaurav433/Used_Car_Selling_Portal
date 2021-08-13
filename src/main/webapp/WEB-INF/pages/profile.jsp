<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    isELIgnored="false"  pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
     <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
  <div class="container">
    <a class="navbar-brand" href="#">
         <img src="<spring:url value="/image/logo.jpg"/>">
        </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Profile update 
                <span class="sr-only">(current)</span>
              </a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>
<div align="center">
<h2><c:out value="${profile.name}"/></h2>

<form:form method="POST" action="update" modelAttribute="upProf">
		<table>
		<tr>
		<td>ID:</td>
		<td>${id}
			<form:hidden path="id"/>
		</td>
		
		</tr>
		
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td><form:label path= "email">Email</form:label></td>
				<td><form:input path= "email" /></td>
			</tr>
			<tr>
				<td><form:label path= "phone_number">Phone Number</form:label></td>
				<td><form:input path= "phone_number" /></td>
			</tr>
			<tr>
				<td><form:label path= "address">Address</form:label></td>
				<td><form:input path= "address"/></td>
			</tr>
				
				<form:hidden path= "username"/>
			
				<form:hidden path= "password"/>
			
			<tr>
				<td colspan="2"><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</form:form>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>