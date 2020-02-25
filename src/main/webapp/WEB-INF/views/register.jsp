<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
</head>
<body>
		
		<form action = "/register" method = "post">
		
		<fieldSet>

			<legend><h1>Please fill out the form below</h1></legend>

			<p><h3>First Name: <input type="text" name="firstName" /></h3></p>

			<p><h3>Last Name: <input type="text" name="lastName" /></h3></p>
			
			<p><h3>Email: <input type="email" name="email" /></h3></p>

			<p><h3>Phone Number: <input type="tel" name="phoneNumber" /></h3></p>
			
			<p><h3>Password: <input type="password" name="password" /></h3></p>
			
		</fieldset>
		<p>
			<a href="/confirm"><button type="submit">Register!!!!</button></a>
		
		</p>
		</form>
		
</body>
</html>