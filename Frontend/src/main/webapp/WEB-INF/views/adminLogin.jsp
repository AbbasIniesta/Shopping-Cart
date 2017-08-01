<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body{
background: url("http://img08.deviantart.net/e062/i/2012/109/1/2/rainbow_wallpaper_by_zippy09-d4wocck.jpg");
 background-size: cover;
font-family: 'Raleway', sans-serif;  
  margin:50px auto;}
</style>
</head>
<body>
<h1 class="text-primary">Welcome Boss :-)</h1>



<%@ include file="menu.jsp" %>


<c:choose>


<c:when test="${isAdminClickedCategory == 'true'}">
<%@ include file="Category.jsp" %>
</c:when>

<c:when test="${isUserClickedProductButton == 'true'}">
<%@ include file="Product.jsp" %>
</c:when>
<c:when test="${isUserClickedSupplierButton == 'true'}">
<%@ include file="Supplier.jsp" %>
</c:when>

<c:when test="${isAdminclickedViewCategory == 'true'}">
<%@ include file="viewcategory.jsp" %>
</c:when>

<c:when test="${isAdminclickedViewProduct == 'true'}">
<%@ include file="viewproduct.jsp" %>
</c:when>

<c:when test="${isAdminclickedViewSupplier == 'true'}">
<%@ include file="viewsupplier.jsp" %>
</c:when>

<c:when test="${isAdminClickedEditProduct == 'true'}">
<%@ include file="editProduct.jsp" %>
</c:when>

<c:when test="${isAdminClickedEditCategory == 'true'}">
<%@ include file="editCategory.jsp" %>
</c:when>

<c:when test="${isAdminClickedEditSupplier == 'true'}">
<%@ include file="editSupplier.jsp" %>
</c:when>

</c:choose>

</body>
</html>