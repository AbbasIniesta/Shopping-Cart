<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>

/*The Google Font*/
/* @import url(https://fonts.googleapis.com/css?family=Open+Sans:600); */
body{
  background:url("http://img08.deviantart.net/e062/i/2012/109/1/2/rainbow_wallpaper_by_zippy09-d4wocck.jpg");
  background-size: cover;
  font-family: 'Open Sans', sans-serif; 
  margin:50px auto;
}
.cform{
  margin:auto;
  width:250px;
  border:5px solid rgba(255,255,255,0.2);
  border-radius:5px;
}
.cform .title{
  width:100%;
  height:35px;
  background:#65A832;
  text-align:center;
  background:-webkit-linear-gradient(top, #65A832 0%, #5E9C2F 85%, #5A972C 100%);
  background:-moz-linear-gradient(top, #65A832 0%, #5E9C2F 85%, #5A972C 100%);
  background:-o-linear-gradient(top, #65A832 0%, #5E9C2F 85%, #5A972C 100%);
  color:#FFF;
  font-size:20px;
  border-radius:3px 3px 0 0;
  padding-top:10px;
}
.cform .title:after{
  content:'';
  border-top: 6px solid #5A972C;
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  display:block;
  position:absolute;
  margin:35px 15px;
}
.cform .title  span{
  position:absolute;
  display:block;
  margin-left:75px;
}
.cform .form{
  background:#b3b3b3;
  width:100%;
  font-family:;
  margin:auto;
  text-align:center;
  padding:10px 0;
}
.cform .form div{
  text-align:justify;
  margin-left:34px;
  padding:5px 0;
}
.cform .form input[type="text"],textarea{
  padding:5px;
  outline:none;
  width:230px;
  height:40px;
  border:1px solid #DEDEDE;
  border-radius:5px;
  color:#65A832;
  font-family: 'Open Sans', sans-serif;
  font-size:25px;
  transition:linear 0.4s;
}
.cform .form textarea:focus{
  height:70px;
}
.cform .btn{
  background:#F3F3F3;
  text-align:center; 
  border-radius:0 0 3px 3px;
  border-top:1px solid #EEE;
  padding:5px;
}
.cform .btn input[type="submit"]{
  background:#65A832;
  background:linear-gradient(top, #65A832 0%, #5E9C2F 85%, #5A972C 100%);
  padding:10px;
  border:none;
  border-radius:5px;
  box-shadow:0px 1px 1px #54892C;
  color:#FFF;
  cursor:pointer;
  font-family: 'Open Sans', sans-serif;
}


</style>

<script type="text/javascript">
function formRegister() {
var productName = document.getElementById('productName');

var productDesc = document.getElementById('productDesc');

var productPrice = document.getElementById('productPrice');

var productStock = document.getElementById('productStocks');

var productOffers = document.getElementById('productOffers');

var productReview = document.getElementById('productReview');


if (notEmpty(productName, "ProductName Should not be empty")) {
	
	if (isAlphabet(productName, "Please enter only letters for productName")) {

		if (notEmpty(productDesc, "productDesc Should not be empty")) {

			if (isAlphabet(productDesc, "Please enter only Letters for productDesc")) {
			
				if (notEmpty(productPrice, "productPrice Should not be empty")) {
					
					if (isNumeric(productPrice, "please Enter only Numbers productPrice")) {
						
 				       if (notEmpty(productStocks, "productStock Should not be empty")) {
							
							    	if (isAlphabet(productStocks, "please Enter only Letters for productStock")) {
								
								       if (notEmpty(productOffers, "productOffers Should not be empty")) {
									
									       if (isAlphanumeric(productOffers, "please Enter a valid productOffers")) {
										
												if (notEmpty(productReview, "productReview Should not be empty")) {
													
													if (isAlphabet(productReview, "Please enter only Letters for productReview")) {
									
						return true;
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
        }

return false;
}
function notEmpty(elem, helperMsg) {
	if (elem.value.length == 0) {
		alert(helperMsg);
		elem.focus(); // set the focus to this input
		return false;
	}
	return true;
}
function isAlphabet(elem, helperMsg) {
	var alphaExp = /^[a-z A-Z]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}

function isNumeric(elem, helperMsg) {
	var numericExpression = /^[0-9]+$/;
	if (elem.value.match(numericExpression)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}

function isAlphanumeric(elem, helperMsg) {
	var alphaExp = /^[0-9 %]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}

</script>

</head>

<body>
<form action="newproduct" method="post" onsubmit="return formRegister()" enctype="multipart/form-data">
<section class="cform">
  <article class="title">
    <span>Product Form</span>
  </article>
  <article class="form">
    <div>Product Name</div>
    <input type="text" name="productName" id="productName" placeholder="">
      <div>Product Desc</div>
    <input type="text" name="productDesc" id="productDesc" placeholder="">
      <div>Product Price</div>
    <input type="text" name="productPrice" id="productPrice" placeholder="">
       <div>Product Stocks</div>
    <input type="text" name="productStocks" id="productStocks" placeholder="">
      <div>Product Offers</div>
    <input type="text" name="productOffers" id="productOffers" placeholder="">
      <div>Product Review</div>
    <input type="text" name="productReview" id="productReview" placeholder="">
    	 <div>image</div>
    <input type="file" class="form-control" placeholder="Upload Image"
					name="file" id="file"><i class="fa fa-user">
    
     </article>
  <article class="btn">
    <input type="submit" value="Submit">
  </article>
</section>  
  
</form>
</body>

</html>



