<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/spacelab/bootstrap.min.css" rel="stylesheet" integrity="sha384-nl8CRcNYOGaXP68QRJeVTXCWAhwqBhRha0QbuubX1qDQpGT3GgclpvyzkR2JzyfZ" crossorigin="anonymous">
<title>Register Page</title>
</head>
<body>
		<div class="container">
		<form action = "/register" method = "post">
		
			
			<h1>Please fill out the form below</h1>
			<div class="form-group form-check">
			    <label for="firstName">First Name</label>
			    <input type="text" class="form-control" id="firstName" name="firstName">
  				
			</div>
			<div class="form-group form-check">
			    <label for="lastName">Last Name</label>
			    <input type="text" class="form-control" id="lastName" name="lastName">
  				
			</div>
			<div class="form-group form-check">
			    <label for="email">Email</label>
			    <input type="email" class="form-control" id="email" name="email">
  				
			</div>			
			<div class="form-group form-check">
			    <label for="phoneNumber">Phone Number</label>
			    <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber">
  				
			</div>
			<div class="form-group form-check">
			    <label for="password">Password</label>
			    <input type="password" class="form-control" id="password" name="password">
  				
			</div>			
			
		
			 <a href="/confirm"><button type="submit" class="btn btn-primary">Submit</button></a>
					
		</form>
		</div>
</body>
</html>