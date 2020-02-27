<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/spacelab/bootstrap.min.css" rel="stylesheet" integrity="sha384-nl8CRcNYOGaXP68QRJeVTXCWAhwqBhRha0QbuubX1qDQpGT3GgclpvyzkR2JzyfZ" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
				<div class="container">
			
				<form action = "/" method = "post">
		
		<fieldset>
				<legend><h1>Your Status</h1></legend>
				<p><h3>Thank you ${ firstName }, your registration is completed.</h3></p>
				<p><h3>Email: ${ email } </h3></p>
				<p><h3>Phone: ${ phoneNumber } </h3></p>
		</fieldset>
		<p>				
			<a href="/"><button type="submit">Home Page</button></a>
		</p>
		</form>
</body>
</html>