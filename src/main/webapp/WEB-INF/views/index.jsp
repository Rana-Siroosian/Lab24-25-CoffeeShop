<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	
		<h1>Welcome to GC Coffee</h1>
		<fieldset>
			<legend><h2>You can register here</h2></legend>
			<a href="/register"><button type="submit">Register!</button></a>
		
		</fieldset>
		
		<fieldset>
			<legend><h2>You can shop here</h2></legend>
			<a href="/products"><button type="submit">Shop!</button></a>
		
		</fieldset>
		
		<fieldset>
			<legend><h2>Admin</h2></legend>
			<a href="/admin"><button type="submit">Login</button></a>
		
		</fieldset>
		
</body>
</html>