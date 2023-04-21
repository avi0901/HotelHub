<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Admin Page</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href= "<c:url value = '/resources/css/common.css'/>"><title>User Options</title>
<style>
	#landing-header {
	    z-index: 1;
	    position: relative;
	    text-align: center;
	    padding-top: 20vh;
	}
	
	#btns{
		z-index: 1;
	    position: relative;
	    text-align: center;
	    padding-top: 5vh
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
	<div id="landing-header">
			<h1>Welcome to Hotel Admin Page</h1>
	</div>
	
	<div id= "btns">
		<a href="/Hotel_Management/viewhotels" class="btn btn-lg btn-success">View All Hotels</a>
	</div>
	
	<div id= "btns">
		<a href="/Hotel_Management/viewall" class="btn btn-lg btn-success">View All Bookings</a>
	</div>
	
	<div id= "btns">
		<a href="/Hotel_Management/checkin" class="btn btn-lg btn-success">Guest Check In</a>
	</div>
	
	<div id= "btns">
		<a href="/Hotel_Management/checkout" class="btn btn-lg btn-success">Guest Check Out</a>
	</div>
	
	<div id= "btns">
		<a href="/Hotel_Management/cancellation" class="btn btn-lg btn-success">Cancel Booking</a>
	</div>
	
	<div id= "btns">
		<a href="/Hotel_Management/generatebill" class="btn btn-lg btn-success">Generate Bill</a>
	</div>
	
	<hr>
	
	
</body>
</html>