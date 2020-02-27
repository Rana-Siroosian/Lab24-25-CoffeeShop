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
<title>${ title }</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/spacelab/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-nl8CRcNYOGaXP68QRJeVTXCWAhwqBhRha0QbuubX1qDQpGT3GgclpvyzkR2JzyfZ"
	crossorigin="anonymous">

</head>
<body>
			<main class="container">
		<h1>Our Menu</h1>
		
		<form class="form-inline" action="/product" autocomplete="off">
		  <label class="sr-only" for="name">Keyword</label>
		  <input type="text" value="" class="form-control mb-2 mr-sm-2" id="name" name="name" placeholder="keyword">
		  
		<!--    <label class="sr-only" for="name">Name</label>
		<!--  <select class="form-control mb-2 mr-sm-2" id="name" name="name">
		  	<option value="">Name</option>-->
		  	
		  	<!--  	<option >Description</option>-->
		  	
		  	
		<!--    </select>-->
		
		  <button type="submit" class="btn btn-primary mb-2 mr-2">Search</button>
		  
		</form>
		
		<table class="table">
			<thead>
			<tr>
				<th>Food</th><th>Description</th><th>Quantity</th><th>Price</th><th>Action</th>
			</tr>
			
						
					</thead>
					<tbody>
						<c:forEach var="product" items="${ product }">

							<tr>
								<td>${ product.name }</td>
								<td>${ product.description }</td>
								
								<td>${ product.quantity }</td>
								<td><fmt:formatNumber value=" ${ product.price }"
										minFractionDigits="2" /></td>
								<td>
								<a href="/product/edit?id=${ product.id }" class="btn btn-light btn-sm">Edit</a>
								<a href="/product/delete?id=${ product.id }" class="btn btn-light btn-sm"> Delete</a>
								</td>
							</tr>
						</c:forEach>
						</tbody>
				</table>
		
		<a class="btn btn-secondary" href="/product/create">Add</a>
	</main>

</body>
</html>