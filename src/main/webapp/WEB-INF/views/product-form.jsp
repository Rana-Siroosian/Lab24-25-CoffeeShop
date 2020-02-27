<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />

</head>
<body>
		<main class="container">
		<h1>Add a Product</h1>
		
		<form  action="/admin" method="post">
			<input type="hidden" name="id" value="" />
			<div class="form-group">
			    <label for="name">Name</label>
			    <input class="form-control" id="name" name="name" value="" required minlength="4" autocomplete="off">
			</div>
			
			<div class="form-group">
			    <label for="description">Description</label>
			    <input class="form-control" id="description" name="description" value="" required minlength="3" autocomplete="off">
			</div>
			<div class="form-group">
			    <label for="quantity">Quantity</label>
			    <input class="form-control" id="quantity" name="quantity" value="" >
			</div>
			<div class="form-group">
			    <label for="price">Price</label>
			    <input class="form-control" id="price" name="price" value="" >
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
			<a href="/admin" class="btn btn-link">Cancel</a>
		</form>
	</main>
</body>
</html>