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

				<form action="/product/edit" method="post">
	
		<h2>${title} Item</h2>

		<div class="form-group">


				<input type="hidden" name="id" value="${ product.id }" />

				<label for=name>Name</label> 
				<select class="form-control" name="name" required minlength="4" autocomplete="off">

					<c:forEach items="${names}" var="name">

						<c:choose>

							<c:when test="${name eq product.name}">

								<option value="${name}" selected>${name}</option>

							</c:when>

							<c:when test="${name ne product.name}">

								<option value="${name}">${name }</option>

							</c:when>

						</c:choose>

					</c:forEach>

				</select> 
				
				<label for="description">Description</label> <input class="form-control" id="description" name="description" value="${product.description}" required

					minlength="3" autocomplete="off"> 
					
				<label for="quantity">Quantity</label>

				<input class="form-control" id="quantity" name="quantity" value="${product.quantity}" required autocomplete="off">




				<label for="Price">Price</label>
				 <input class="form-control" id="price" name="price" value="${ price }" required step="0.05" autocomplete="off">

				</div>
				
				<button type="submit" class="btn btn-primary">Submit</button>

			</form>
			<a href="/admin"><button class="btn btn-link">Cancel</button></a>



	</main>
</body>
</html>