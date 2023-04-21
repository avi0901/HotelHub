<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill</title>
<style>
	body {
		font-family: Arial, sans-serif;
		margin: 0;
		padding: 0;
	}
	
	header {
           font-family: 'Tilt Prism', cursive;
		padding: 20px;
		text-align: center;
		font-size: 24px;
	}
	
	h1 {
		margin-top: 0;
		font-size: 36px;
		font-weight: bold;
	}
	
	table {
		width: 100%;
		margin: 20px;
           padding-left: 40px;
	}
	
	th, td {
		padding: 10px;
           text-align: left;
	}
	
	th {
		font-weight: bold;
	}
	
	tfoot td {
		font-weight: bold;
	}

       hr{
           width: 80%;
       }
</style>
</head>
<body>
	<header>
		<h1>Hotel Bill</h1>
	</header>

    <table>
        <tr>
            <th>Booking ID:</th>
            <td>${details.getBooking_Id()}</td>
            <th>Bill Date:</th>
            <td>${today}</td>
        </tr>
        <tr>
            <th>Customer Name:</th>
            <td>${details.getName()}</td>
        </tr>
        <tr>
            <th>Customer Address:</th>
            <td>${details.getFromCity()}</td>
        </tr>
        <tr>
            <th>Phone Number:</th>
            <td>${details.getPhoneNumber()}</td>
        </tr>
        <tr>
            <th>Hotel Name:</th>
            <td>${details.getHotel_Name()}</td>
            <th>Peoples:</th>
            <td>${details.getNo_Of_People()}</td>
        </tr>
        <tr>
            <th>Check In Date:</th>
            <td>${details.getCheckInDate()}</td>
            <th>Check Out Date:</th>
            <td>${details.getCheckOutDate()}</td>
        </tr>
    </table>

    <hr>
    <hr>

	
	<table>
		<tr>
            <th colspan="3">Room Rent @ Rs.${details.getRent()}</th>
            <td>Rs.${rent}</td>
        </tr>

        <tr>
            <th colspan="3">Telephone Charges</th>
            <td> Rs.0 </td>
        </tr>
        
        <tr>
            <th colspan="3">Laundary</th>
            <td>Rs.0</td>
        </tr>
        
        <tr>
            <th colspan="3">Food & Beverage</th>
            <td>Rs.0</td>
        </tr>
        
        <tr>
            <th colspan="3">Car Rental</th>
            <td>Rs.0</td>
        </tr>
        
        <tr>
            <th colspan="3">Cancellation Charges</th>
            <td>Rs.0</td>
        </tr>
        

		<tfoot>
			<tr>
				<td colspan="3">Subtotal</td>
				<td>${rent}</td>
			</tr>
			<tr>
				<td colspan="3">Tax 18%</td>
				<td>${tax}</td>
			</tr>
			<tr>
				<td colspan="3">Total</td>
				<td>${total}</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>