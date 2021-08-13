<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="RegHead.jsp"%>
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
<title>Register Here</title>
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
	background-color: #f7f7f7;
	color: black;
}
</style>

</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">REGISTER BELOW</div>
					<div class="card-body">

						<form:form method="POST" action="register"
							modelAttribute="register" theme="bootstrap">
							<div class="form-group">
								<form:label path="name">Name</form:label>
								<form:input cssClass="form-control input-sm" path="name"
									 placeholder="Enter your full name"></form:input>
									
                        <form:errors path="name"/>
                   
							</div>

							<div class="form-group">
							<form:label path="email">Email</form:label>
								<form:input cssClass="form-control input-sm" path="email"
									 placeholder="Enter your email"></form:input>
									 <div class="has-error">
                        <form:errors path="email" class="help-inline"/>
                    </div>
							</div>

							<div class="form-group">
							<form:label path="phone_number">Phone Number</form:label>
								<form:input cssClass="form-control input-sm" path="phone_number"
									 placeholder="Enter your number"></form:input>
									 <div class="has-error">
                        <form:errors path="phone_number" class="help-inline"/>
                    </div>
							</div>

							<div class="form-group">
							<form:label path="address">Address</form:label>
								<form:textarea cssClass="form-control input-sm" path="address"
									 placeholder="Enter your address"></form:textarea>
									 <div class="has-error">
                        <form:errors path="address" class="help-inline"/>
                    </div>
							</div>

							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
									<form:label path="username">Username</form:label>
										<form:input cssClass="form-control input-sm" path="username"
											 placeholder="Enter your username"></form:input>
											 <div class="has-error">
                        <form:errors path="username" class="help-inline"/>
                    </div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
									<form:label path="password">Password</form:label>
										<form:password cssClass="form-control input-sm"
											path="password" 
											placeholder="Enter your password"></form:password>
											<div class="has-error">
                        <form:errors path="password" class="help-inline"/>
                    </div>
									</div>
								</div>
								
							</div>
							<div>
								<input type="Submit" value="Submit" />
							</div>

						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>
