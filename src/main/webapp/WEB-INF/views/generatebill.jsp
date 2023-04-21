<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Generate Bill</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href= "<c:url value = '/resources/css/common.css'/>">
</head>
<body>
	<div class="top-container">
        <div class="logo">
            <h1>Hotel<span>Hub</span></h1>
        </div>
    </div>

    <nav class="navbar">
        <div class="links">
            <a href="/Hotel_Management/findHotel">Find Hotel</a>
            <a href="/Hotel_Management/">Location Map</a>
            <a href="/Hotel_Management/">Why HH?</a>
            <a href="/Hotel_Management/">About HH</a>
            <a href="/Hotel_Management/">Careers</a>
            <a href="/Hotel_Management/">Contact Us</a>
        </div>
    </nav>

	<div class="container mt-5">
		<label class="mr-sm-2" for="inlineFormCustomSelect">Enter Booking ID</label>
		<form class="form-inline" action="bill" method="post">
			<div class="form-group">
				<label class="sr-only" for="inlineFormInputName2">Enter Booking ID</label>
				<input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2"  name="BookingID" placeholder="Booking ID">
				<button type="submit" class="btn btn-primary mb-2">Generate Bill</button>
			</div>
				
		</form>
		
		<hr>
			<h3 class="text-center">${booking} ${successful}</h3>
	</div>
		
</body>
</html>