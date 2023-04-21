<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href= "<c:url value = '/resources/css/common.css'/>">
    <title>Find Hotel</title>
    	    
   	<script >
      function updateProducts() {
        const state = document.getElementById("state").value;
        const citySelect = document.getElementById("city");
        citySelect.innerHTML = ""; // Clear the Product options

        // Add cities for the selected country
        if (state === "MP") {
          addProOption("Select City", citySelect);
          addProOption("Bhopal", citySelect);
          addProOption("Indore", citySelect);
          addProOption("Gwalior", citySelect);
          addProOption("Jabalpur", citySelect);
        } else if (state === "Maharastra") {
          addProOption("Select City", citySelect);
          addProOption("Mumbai", citySelect);
          addProOption("Pune", citySelect);
          addProOption("Nasik", citySelect);
          addProOption("Nagpur", citySelect);
        }else if (state === "CG") {
          addProOption("Select City", citySelect);
          addProOption("Raipur", citySelect);
          addProOption("Bilaspur", citySelect);
          addProOption("Raigarh", citySelect);
          addProOption("Bhilai", citySelect);
        }

      }

      function addProOption(pro, select) {
        const option = document.createElement("option");
        option.text = pro;
        option.value = pro;
        select.add(option);
      }

    </script>
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
	<h3 class="text-center">Details</h3>
		<form  action="handleFindHotels" method="post">
			<div class="form-group">
			    <label for="exampleInputEmail1">Select State</label>
				<!-- <input type= class="form-control" name="State"/> -->
				<select name="state" id="state" onchange="updateProducts()">
                <option>Select State</option>
                <option value="Assam">Assam</option>
                <option value="CG">Chhattishgarh</option>
                <option value="UP">Uttar Pradesh</option>
                <option value="MP">Madhya Pradesh</option>
                <option value="Maharastra">Maharastra</option>
              </select>
			</div>
			
			<div class="form-group">
			    <label for="exampleInputEmail1">Select City</label>
			    <select id="city" name ="city">
              	<option value="">Select City</option>
          </select>
			</div>
			
			<div class="form-group">
			    <label for="exampleInputEmail1">Select Area </label>
			    <select name="area" id="area" >
                <option>Select Area</option>
                <option value="VijayNagar">Vijay Nagar</option>
                <option value="Bhawarkua">Bhawarkuan</option>
                <option value="Navlakha">Navlakha</option>
                <option value="Palasia">Palasia</option>
                <option value="LIG">LIG</option>
              </select>
			</div>
			
			<div class="form-group">
			    <label for="exampleInputEmail1">Check In Date</label>
			    <input type="date" class="form-control" name="CheckInDate" >
			</div>
			
			<div class="form-group">
			    <label for="exampleInputEmail1">Check Out Date:</label>
			    <input type="date" class="form-control" name="CheckOutDate" >
			</div>
			
			
			<div class="container text-center">
				<button type="reset" class="btn btn-dark">Clear</button>
				<button type="submit" class="btn btn-info">Submit</button>
			</div>
		</form>
				
		<hr>
		
	</div>
	
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>