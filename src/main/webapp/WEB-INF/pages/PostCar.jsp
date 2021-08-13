<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Post Car</title>
<style>
.justify-content-center {
	margin-top: 60px;
	margin-bottom: 25px;
	font-size: 17px;
	color: black;
}

.card-header {
	/* text-align: center; */
	font-size: 23px;
	font-weight: bold;
	letter-spacing: 3px;
	word-spacing: 17px;
	
	color: black;
}
</style>
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
          <a class="nav-link" href="#">Post Car
                <span class="sr-only">(current)</span>
              </a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>

<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">POST YOUR CAR</div>
					<div class="card-body">
<form:form method="POST" action="car"  theme="bootstrap" modelAttribute="car">
		
		<%-- ID:
		${id} --%>
		<form:label path="${id}"></form:label>
			<form:hidden path="id"/>
		
		<div class="form-group">
			<form:label path="make">Make</form:label>
			<form:input cssClass="form-control input-sm" path="make"/>
			</div>
			<div class="form-group">
				<form:label path= "model">Model</form:label>
				<form:input cssClass="form-control input-sm" path= "model" />
			</div>
			<div class="form-group">
				<form:label path= "year">Year</form:label>
				<form:input cssClass="form-control input-sm" path= "year" />
			</div>
			<div class="form-group">
				<form:label path= "fuelType">Fuel</form:label>
				<form:input cssClass="form-control input-sm" path= "fuelType" />
			</div>
			<div class="form-group">
				<form:label path= "registrationNo">Registration No</form:label>
				<form:input cssClass="form-control input-sm" path= "registrationNo"/>
			</div>
			<div class="form-group">
				<form:label path= "price">Price</form:label>
				<form:input cssClass="form-control input-sm" path= "price" />
			</div>
		
			<form:hidden path="user_id" />
		
			<tr>
				<td colspan="2"><input type="submit" value="Save" /></td>
			</tr>
		
	</form:form>
	</div>
	</div>
	</div>
	</div>
	</div>
	

</body>
</html>
<%@ include file="footer.jsp"%>