<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>


<link rel="stylesheet" href="style.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta charset="utf-8">

</head>
<body>

<h1>
ADD PRODUCT	
</h1>

<c:url var="addAction" value="/admin/Product/add" > </c:url>

<form:form action="${addAction}" commandName="product" method="post"  enctype="multipart/form-data" >

File to upload: <input type="file" name="file">
<table>
	
	
	<tr>
		<td>
			<form:label path="productname">
				<spring:message text="productname"/>
			</form:label>
		</td>
		<td>
			<form:input path="productname" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="price">
				<spring:message text="Price"/>
			</form:label>
		</td>
		<td>
			<form:input path="price" />
		</td>
	</tr>
	
	
	<tr>
		<td>
			<form:label path="quantity">
				<spring:message text="quantity"/>
			</form:label>
		</td>
		<td>
			<form:input path="quantity" />
		</td>
	</tr>
	
	
	
	<tr>
		<td>
			<form:label path="description">
				<spring:message text="description"/>
			</form:label>
		</td>
		<td>
			<form:input path="description" />
		</td>
	</tr>
	
	
	
	
	
	
	
	
	
	
	
	
	
	<tr>
		<td colspan="2">
			<c:if test="${product.id==0}">   
				<input type="submit"
					value="<spring:message text="ADD Person"/>" />
			</c:if>
			<c:if test="${product.id!=0}">
				<input type="submit"
					value="<spring:message text="Edit Person"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Product List</h3>
<c:if test="${!empty listProduct}">
	<table class="tg">
	<tr>
		<th width="80">Product ID</th>
		<th width="120">Product Details</th>
		<th width="120">Product Price</th>
		<th width="120">Product Quantity</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listProduct}" var="product1">
		<tr>
			<td>${product1.id}</td>
			<td>${product1.price }</td>
			<td>${product1.productname}</td> 
			<td>${product1.quantity }</td>
			<td>${product1.description }</td>
			<td><a href="<c:url value='/admin/editProduct/${product1.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/admin/deleteProduct/${product1.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>


