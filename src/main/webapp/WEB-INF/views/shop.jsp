<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

				
			<div><h1>Our Products</h1></div>
			<table class="table table-bordered table-responsive table-hover">  
			
					<tr>
						<th><p>Name</p></th>
						<th>Description</th>
						<th>Price</th>
						<th>Quantity</th>
					</tr>
					
					<c:forEach var="product" items="${ product }">
					
						<tr>
							<td>${ product.name } </td>
							<td>${ product.description } </td>
							<td><fmt:formatNumber value= "${ product.price }" minFractionDigits="2" /> </td>
							<td>${ product.quantity }</td>
						</tr>
					</c:forEach>
			</table>
		<p>				
			<a href="/"><button type="submit">Home Page</button></a>
		</p>
</body>
</html>