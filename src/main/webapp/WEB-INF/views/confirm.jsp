<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<fieldset>
				<legend><h1>Your Status</h1></legend>
				<p><h3>Thank you ${ firstName }, your registration is completed.</h3></p>
				<p><h3>Email: ${ email } </h3></p>
				<p><h3>Phone: ${ phoneNumber } </h3></p>
		</fieldset>
		<p>				
			<a href="/"><button type="submit">Home Page</button></a>
		</p>
</body>
</html>