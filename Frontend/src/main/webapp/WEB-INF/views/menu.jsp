<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
 <html lang="en" class="no-js">
    <head>

    <style>
@import url(https://fonts.googleapis.com/css?family=Raleway);
body {
  margin: 0px;
}
nav {
  margin-top: 40px;
  padding: 24px;
  text-align: center;
  font-family: Raleway;
  box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
}
#nav-3 {
  background: #5175C0;
}


.link-1 {
  transition: 0.3s ease;
  background: #3fa46a;
  color: #ffffff;
  font-size: 20px;
  text-decoration: none;
  border-top: 4px solid #3fa46a;
  border-bottom: 4px solid #3fa46a;
  padding: 20px 0;
  margin: 0 20px;
}
.link-1:hover {
  border-top: 4px solid #ffffff;
  border-bottom: 4px solid #ffffff;
  padding: 6px 0; 
}

.link-2 {
  transition: 0.6s;
  color: #ffffff;
  font-size: 20px;
  text-decoration: none;
  border-right: 2px dotted transparent;
  padding: 30px 8px 0 10px;
  margin: 0 10px;
}
.link-2:hover {
  border-right: 2px dotted #ffffff;
  padding-bottom: 24px;
}
.link-3 {
  transition: 0.4s;
  color: #ffffff;
  font-size: 20px;
  text-decoration: none;
  padding: 0 10px;
  margin: 0 10px;
}
.link-3:hover {
  background-color: #ffffff;
  color: #EEA200;
  padding: 24px 10px;
}

background-color: #fffbf8;
padding:13px;
width:335px;
margin: 100px auto;
-webkit-box-sizing:border-box;
-moz-box-sizing:border-box;
box-sizing:border-box;
border-radius:6px;
-webkit-box-shadow:
0 2px 4px 0 rgba(72, 72, 72, 0.83),
0 10px 15px 0 rgba(126, 126, 126, 0.12),
0 -2px 6px 1px rgba(199, 199, 199, 0.55) inset,
0 2px 4px 2px rgba(255, 255, 255, 0.83) inset;
-moz-box-shadow:
0 2px 4px 0 rgba(72, 72, 72, 0.83),
0 10px 15px 0 rgba(126, 126, 126, 0.12),
0 -2px 6px 1px rgba(199, 199, 199, 0.55) inset,
0 2px 4px 2px rgba(255, 255, 255, 0.83) inset;
box-shadow:
0 2px 4px 0 rgba(72, 72, 72, 0.83),
0 10px 15px 0 rgba(126, 126, 126, 0.12),
0 -2px 6px 1px rgba(199, 199, 199, 0.55) inset,
0 2px 4px 2px rgba(255, 255, 255, 0.83) inset;
}
.search_1{
width:250px;
height:30px;
padding-left:15px;
border-radius:6px;
border:none;
color:#0F0D0D;
font-weight:500;
background-color:#ff3300;
-webkit-box-shadow:
0 -2px 2px 0 rgba(199, 199, 199, 0.55),
0 1px 1px 0 #fff,
0 2px 2px 1px #fafafa,
0 2px 4px 0 #b2b2b2 inset,
0 -1px 1px 0 #f2f2f2 inset,
0 15px 15px 0 rgba(41, 41, 41, 0.09) inset;
-moz-box-shadow:
0 -2px 2px 0 rgba(199, 199, 199, 0.55),
0 1px 1px 0 #fff,
0 2px 2px 1px #fafafa,
0 2px 4px 0 #b2b2b2 inset,
0 -1px 1px 0 #f2f2f2 inset,
0 15px 15px 0 rgba(41, 41, 41, 0.09) inset;
box-shadow:
0 -2px 2px 0 rgba(199, 199, 199, 0.55),
0 1px 1px 0 #fff,
0 2px 2px 1px #fafafa,
0 2px 4px 0 #b2b2b2 inset,
0 -1px 1px 0 #f2f2f2 inset,
0 15px 15px 0 rgba(41, 41, 41, 0.09) inset;
}
.submit_1{
width:75px;
height:30px;
background-image:url(img/search-btn.png);
background-repeat: no-repeat;
background-position: 17px 2px;
background-color:transparent;
-webkit-background-size:20px 20px;
background-size:20px 20px;
border:none;
cursor:pointer;
}
.search_1:focus{
outline:0;
}


.dropbtn {
  
    cursor: pointer;
}

/* Dropdown button on hover & focus */
.dropbtn:hover, .dropbtn:focus {
   
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
.show {display:block;}


</style>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Login and Registration Form with HTML5 and CSS3</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    </head>

    <body>


<nav id="nav-3">
<a class="link-3" href="">Home</a>
<c:if test="${isAdminLoggedIn == 'true'}">
  <div class="dropdown">
  <a onclick="myFunction()" class="dropbtn link-3">Product</a>
  <div id="myDropdown" class="dropdown-content">
    <a href="productPage">Add</a>
    <a href="viewProduct">View</a>
  </div>
</div> 

    <div class="dropdown">
  <a onclick="myFunction1()" class="dropbtn link-3">Category</a>
  <div id="myDropdown1" class="dropdown-content">
    <a href="categoryPage">Add</a>
    <a href="viewCategory">View</a>
  </div>
</div> 

<div class="dropdown">
  <a onclick="myFunction2()" class="dropbtn link-3">Supplier</a>
  <div id="myDropdown2" class="dropdown-content">
    <a href="supplierPage">Add</a>
    <a href="viewSupplier">View</a>
  </div>
</div>
</c:if>

   <input type ="search" class="search_1" placeholder=" lOOkinG fOr..." />
<button type="submit" class="submit_1" value="search">Search !</button>

<c:if test="${isUserLoggedIn == 'true'}">
<a class="link-3" href="">Wishlist</a>
<a class="link-3" href="cartPage">Cart</a>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name == null}">
<a  href="logsign" class="link-3">Login/Signup</a>
</c:if>

<c:if test="${pageContext.request.userPrincipal.name != null}">
<a class="link-3" href="logout">Logout</a> 
</c:if> 
</nav>
<script>
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

function myFunction1() {
    document.getElementById("myDropdown1").classList.toggle("show");
}

function myFunction2() {
    document.getElementById("myDropdown2").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}


</script>

</body>
</html>