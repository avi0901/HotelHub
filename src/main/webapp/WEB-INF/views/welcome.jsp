<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Hotel Hub</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href= "<c:url value = '/resources/css/common.css'/>">
<style>
#landing-header {
	font-family: 'Tilt Prism', cursive;
	color: #0000FF;
    z-index: 1;
    position: relative;
    text-align: center;
    padding-top: 3vh;
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
		<h1>Welcome to Hotel Hub!</h1>
	</div>
	<div id= "btns">
		<a href="/Hotel_Management/login" class="btn btn-lg btn-success"> Login for Front Desk Staff</a>
	</div>
	
	<div id= "btns">
		<a href="/Hotel_Management/findHotel" class="btn btn-lg btn-success"> Book Hotels</a>
	</div>
</body>
</html>