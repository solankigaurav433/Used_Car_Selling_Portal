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
<title>Users Cars</title>
</head>
<body>
<div align="center">

    <h1>Your Car has been posted successfully!</h1>
    </div>
   
    <div>
    <h2 style="color:red;">My posted Car</h2>
    <p>Make: ${car.make}</p>
    <p>Model: ${car.model}</p>
    <p>Year: ${car.year}</p>
    <p>Fuel Type: ${car.fuelType}</p>
    <p>Reg No: ${car.registrationNo}</p>
    <p>Price : ${car.price}</p>
    <p><a href="Home?id=${car.user_id}">Home</a></p>
    </div>
</body>
</html>
<%@ include file="footer.jsp"%>