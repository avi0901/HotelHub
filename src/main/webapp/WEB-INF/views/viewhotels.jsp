<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href= "<c:url value = '/resources/css/common.css'/>">
<title>View All Hotels</title>
<style>

	h2{
		margin:30px;
		padding:10px;
		font-family: 'Tilt Prism', cursive;
		display: flex;
		align-items: center;
		justify-content: center;
		color: #E21818;
		font-size:50px;
	}
	table {
	  width: 90%;
	  margin: 50px;
	  
	  
	}
	
	td {
	  padding: 0.5rem;
	  font-family: 'Roboto Slab', serif;
	  background-color: #BBD6B8;
	  color: black;
	}
	
	th{
		padding: 0.5rem;
	    font-family: 'Roboto Slab', serif;
	    background-color: black;
	    color: white;
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
    <h2>Hotels</h2>
    <table id="table" border="1">
		<tr>
			<th >Hotel ID</th>
			<th align="left">Hotel Name</th>
			<th align="left">State</th>
			<th align="left">City</th>
			<th align="left">Area</th>
			<th align="left">Price</th>
		</tr>
		<c:forEach var="hotel"  items="${mylist}">
			<tr>
				<td> ${hotel.getHotelID()}</td>
				<td> ${hotel.getHotelname()}</td>
				<td> ${hotel.getState()}</td>
				<td> ${hotel.getCity()}</td>
				<td> ${hotel.getArea()}</td>
				<td> ${hotel.getPrice()}</td>
			</tr>
		</c:forEach>
	</table>
    
    
</body>
</html>