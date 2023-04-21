<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href= "<c:url value = '/resources/css/common.css'/>">			
    <title>Booking Page</title>
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
	<h3 class="text-center">Personal Details</h3>
		<form  action="handleBooking" method="post">
			
			<div class="form-group">
			    <label for="exampleInputEmail1">Hotel ID:</label>
			    <input type="text" class="form-control" name="Hotel_ID" value=${HotelId} readonly>
			</div>
			
			<div class="form-group">
			    <label for="exampleInputEmail1">Full Name:</label>
			    <input type="text" class="form-control" name="Name">
			</div>
			
			<div class="form-group">
			    <label for="exampleInputEmail1">From City:</label>
			    <input type="text" class="form-control" name="FromCity">
			</div>
			
			<div class="form-group">
			    <label for="exampleInputEmail1">Phone Number:</label>
			    <input type="text" class="form-control" name="PhoneNumber" >
			</div>
			
			<div class="form-group">
			    <label for="exampleInputEmail1">Check In Date:</label>
			    <input type="date" class="form-control" name="CheckInDate" >
			</div>
			
			<div class="form-group">
			    <label for="exampleInputEmail1">Check Out Date:</label>
			    <input type="date" class="form-control" name="CheckOutDate" >
			</div>
			
			<div class="form-group">
			    <label for="exampleInputEmail1">No Of People:</label>
			    <input type="text" class="form-control" name="No_Of_People" >
			</div>
			
			<div class="form-group">
			    <label for="exampleInputEmail1">Credit Card Number:</label>
			    <input type="text" class="form-control" name="CC" >
			</div>
			
			<div class="form-group">
			    <label for="exampleInputEmail1">Valid Through:</label>
			    <input type="text" class="form-control" name="VT" >
			</div>
			
			<div class="container text-center">
				<button type="reset" class="btn btn-success">Clear</button>
				<button type="submit" class="btn btn-success">Submit</button>
			</div>
		</form>
		<hr>
			<h2 class="text-center">${successful}</h2>
		
	</div>
	
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>