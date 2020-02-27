<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Our Products</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/spacelab/bootstrap.min.css" rel="stylesheet" integrity="sha384-nl8CRcNYOGaXP68QRJeVTXCWAhwqBhRha0QbuubX1qDQpGT3GgclpvyzkR2JzyfZ" crossorigin="anonymous">

</head>
<body>

	<main class="container">
				<h1>Our Products</h1>
	
		<form class="form-inline" action="/product" aurocomplete="off" method="post">
		<label class="sr-only" for="name">Name</label>
		 <input type="text" value="" class="form-control mb-2 mr-sm-2" id="name" name="name" placeholder="name">
		<!--  <label class="sr-only" for="name">Name</label>
		  <select class="form-control mb-2 mr-sm-2" id="name" name="name">
		  	<option value="">Name</option>-->
		  	
		  <!--  	<option >Description</option>-->
		  	
		  </select>
		
		  <button type="submit" class="btn btn-primary mb-2 mr-2">Search</button>
		  
				<table class="table">
					<thead>
						<tr>
							<th>Name</th>
							<th>Description</th>
							<th>Price</th>
							<th>Quantity</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="product" items="${ product }">

							<tr>
								<td>${ product.name }</td>
								<td>${ product.description }</td>
								<td><fmt:formatNumber value="${ product.price }"
										minFractionDigits="2" /></td>
								<td>${ product.quantity }</td>

							</tr>
						</c:forEach>
				</table>
				</form>
				
				<a href="/"><button type="submit" class="btn btn-primary">Home Page</button></a>
				</main>

</body>
</html>