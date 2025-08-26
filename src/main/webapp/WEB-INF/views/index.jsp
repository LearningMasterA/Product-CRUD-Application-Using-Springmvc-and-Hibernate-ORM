<%-- <%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  --%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="ISO-8859-1">
</head>
<body>
<div class="container mt-3">
<div class="row">
<div class="col-md-12">
<h1 class="text-center">Welcome to Product App</h1>

<table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Product Description</th>
      <th scope="col">Product Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${product}" var="p">
    <tr>
      <th scope="row">Hopes ${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td class="font-weight-bold"> &#8377 ${p.price}</td>
      <td>
    <a href="delete/${p.id}"><i class="fa-solid fa-trash text-danger" style="font-size:24px;"></i></a>
    <a href="update/${p.id}"><i class="fa-solid fa-pen-nib text-primary" style="font-size:24px;"></i></a>


      
           
      </td>
      
    </tr> 
   </c:forEach>
    
  </tbody>
</table>

<div class="container text-center">
<a href="addProduct" class="btn btn-outline-success">Add Product</a>


</div>



</div>
</div>
</div>

</body>
</html>


