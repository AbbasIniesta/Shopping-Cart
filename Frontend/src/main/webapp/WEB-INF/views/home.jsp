<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
background: url("http://img08.deviantart.net/e062/i/2012/109/1/2/rainbow_wallpaper_by_zippy09-d4wocck.jpg"); 
 background-size: cover;
font-family: 'Open Sans', sans-serwhen;  
  margin:50px auto;
}
</style>
</head>
<body background="src/main/resources/img/B1.jpg">
<h1 class=font: 16px/26px "Raleway", sans-serwhen;>Hai Fella's </h1>

<%@ include file="menu.jsp" %>

<c:choose>

<c:when test="${isuserClickedLoginButton == 'true'}">
<%@ include file="logsign.jsp" %>
</c:when>

<c:when test="${isUserClickedCartButton == 'true'}">
<%@ include file="Cart.jsp" %>

</c:when>

<c:when test="${isuserClickedProductDetails == 'true' }">
<%@ include file="productDetails.jsp" %>
</c:when>

<c:otherwise>
<%@ include file="productList.jsp" %>
</c:otherwise>

</c:choose>
</body>
</html>