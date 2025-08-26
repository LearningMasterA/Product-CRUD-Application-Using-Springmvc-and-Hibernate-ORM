<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>

<div class="container mt-3">
<div class="row">
<div class="col-md-6 offset-md-3">
<h1 class="text-center mb-3">Fill the product detail</h1>


<form action="handle-product" method="post">
<div class="form-group mt-3">
<label for="name">Product Name</label>
<input type="text" class="form-control" id="name" aria-describedby="emailHelp"
name="name" placeholder="Enter the product name here" required>
</div>

<div class="form-group mt-3">
<label for="description">Product Description</label>
<textarea class="form-control" id="description" rows="5"
name="description" placeholder="Enter the product description" required></textarea>
</div>


<div class="form-group mt-3">
<label for="price">Product Price</label>
<input type="text" form-control" id="price"
name="price" placeholder="Enter the product price" required>
</div>


<div class="container text-center mt-3">
<a href="${pageContext.request.contextPath }/" 
class="btn btn-outline-danger">Back</a>
<button type="submit" class="btn btn-primary">Add</button>


</div>




</form>
</div>



</div>



</div>

</body>
</html>