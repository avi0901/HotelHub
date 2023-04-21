<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Successful</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href= "<c:url value = '/resources/css/common.css'/>">
<style>
	.block {
		color: #0000FF;
	    z-index: 1;
	    position: relative;
	    text-align: center;
	    padding-top: 3vh;
	}
	.but{
		z-index: 1;
	    position: relative;
	    text-align: center;
	    padding-top: 3vh;
	}
</style>
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
    
    <div class="block">
    	<h1>Congratulations!!  ${booking.getName() }</h1>
    	<h1> Your Booking is Successful</h1>
    	<br><br><br>
    	<h2>Booking ID : ${booking.getBooking_Id() }</h2>
    </div>
    <div class = "but">
    	<a class="btn btn-secondary" href="/Hotel_Management/bill?BookingID=${booking.getBooking_Id()}">Generate Bill</a>
    </div>
</body>
</html>