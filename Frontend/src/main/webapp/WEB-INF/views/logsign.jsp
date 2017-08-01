<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<head>
<style>

  @import url(https://fonts.googleapis.com/css?family=Raleway:400,100,200,300);
* {
  margin: 0;
  padding: 0; }

a {
  color: #666;
  text-decoration: none; }
  a:hover {
    color: #4FDA8C; }

input {
  font: 16px/26px "Raleway", sans-serif; }

body {
  color: #666;
  background-color: #f1f2f2;
  font: 16px/26px "Raleway", sans-serif; }

.form-wrap {
  background-color: #fff;
  width: 320px;
  margin: 3em auto;
  box-shadow: 0px 1px 8px #BEBEBE;
  -webkit-box-shadow: 0px 1px 8px #BEBEBE;
  -moz-box-shadow: 0px 1px 8px #BEBEBE; }
  .form-wrap .tabs {
    overflow: hidden; }
    .form-wrap .tabs h3 {
      float: left;
      width: 50%; }
      .form-wrap .tabs h3 a {
        padding: 0.5em 0;
        text-align: center;
        font-weight: 400;
        background-color: #e6e7e8;
        display: block;
        color: #666; }
        .form-wrap .tabs h3 a.active {
          background-color: #fff; }
  .form-wrap .tabs-content {
    padding: 1.5em; }
    .form-wrap .tabs-content div[id$="tab-content"] {
      display: none; }
    .form-wrap .tabs-content .active {
      display: block !important; }
  .form-wrap form .input {
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    color: #006600;
    font-family: inherit;
    padding: .8em 0 10px .8em;
    border: 1px solid #CFCFCF;
    outline: 0;
    display: inline-block;
    margin: 0 0 .8em 0;
    padding-right: 2em;
    width: 100%; }
  .form-wrap form .button {
    width: 100%;
    padding: .8em 0 10px .8em;
    background-color: #28A55F;
    border: none;
    color: #fff;
    cursor: pointer;
    text-transform: uppercase; }
    .form-wrap form .button:hover {
      background-color: #4FDA8C; }
  .form-wrap form .checkbox {
    visibility: hidden;
    padding: 20px;
    margin: .5em 0 1.5em; }
    .form-wrap form .checkbox:checked + label:after {
      -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
      filter: alpha(opacity=100);
      opacity: 1; }
  .form-wrap form label[for] {
    position: relative;
    padding-left: 20px;
    cursor: pointer; }
    .form-wrap form label[for]:before {
      content: '';
      position: absolute;
      border: 1px solid #CFCFCF;
      width: 17px;
      height: 17px;
      top: 0px;
      left: -14px; }
    .form-wrap form label[for]:after {
      -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
      filter: alpha(opacity=0);
      opacity: 0;
      content: '';
      position: absolute;
      width: 9px;
      height: 5px;
      background-color: transparent;
      top: 4px;
      left: -10px;
      border: 3px solid #28A55F;
      border-top: none;
      border-right: none;
      -webkit-transform: rotate(-45deg);
      -moz-transform: rotate(-45deg);
      -o-transform: rotate(-45deg);
      -ms-transform: rotate(-45deg);
      transform: rotate(-45deg); }
  .form-wrap .help-text {
    margin-top: .6em; }
    .form-wrap .help-text p {
      text-align: center;
      font-size: 14px; }


</style>

<script type="text/javascript">
function formRegister() {
var customerName = document.getElementById('customerName');

var emailId = document.getElementById('emailId');

var password = document.getElementById('password');

var phoneNo = document.getElementById('phoneNo');

var address = document.getElementById('address');

var zipCode = document.getElementById('zipCode');



if (notEmpty(customerName, "Username Should not be empty")) {
	
	if (isAlphabet(customerName, "Please enter only letters for Username")) {
		
		if (notEmpty(emailId, "Email ID Should not be empty")) {
			
			if (emailValidator(emailId, "please Enter a valid emailId")) {
				
				if (notEmpty(password, "password Should not be empty")) {
					
					if (isAlphanumeric(password, "please Enter a valid password")) {


						if (notEmpty(phoneNo, "phone Number Should not be empty")) {
							
							if (isNumeric(phoneNo, "Please enter only Numbers for phone Number")) {
								
								if (notEmpty(address, "address Should not be empty")) {
									
									if (notEmpty(address, "address Should not be empty")) {
										
										if (notEmpty(zipCode, "zipCode Should not be empty")) {
											
											if (isNumeric(zipCode, "Please enter only Numbers for zipCode")) {

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

function emailValidator(elem, helperMsg) {
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	if (elem.value.match(emailExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
function isAlphanumeric(elem, helperMsg) {
	var alphaExp = /^[0-9a-zA-Z]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
function isPhonenumber(){
	var phnoExp = /^[]+$/;
	if (elem.value.match(phno)) {
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

<div class="form-wrap">
		<div class="tabs">
						<h3 class="login-tab"><a href="#login-tab-content">Login</a></h3>
						<h3 class="signup-tab"><a class="active" href="#signup-tab-content">Sign Up</a></h3>
		</div><!--.tabs-->

		<div class="tabs-content">

			<div id="login-tab-content">
				<form class="login-form" action="signIn" method="post"> <!-- onsubmit="return formRegister()" -->
					<input type="text" class="input" name="emailId" id="EmailId" autocomplete="off" placeholder="Email ID">
					<input type="password" class="input" name="password" id="Password" autocomplete="off" placeholder="Password">
					<input type="checkbox" class="checkbox" id="remember_me">
					<label for="remember_me">Remember me</label>

					<input type="submit" class="button" value="Login">
				</form><!--.login-form-->
				<div class="help-text">
					<p><a href="#">Forget your password?</a></p>
				</div><!--.help-text-->
			</div><!--.login-tab-content-->

			<div id="signup-tab-content" class="active">
				<form class="signup-form" action="newCustomer" method="post" onsubmit="return formRegister()">
				    <input type="text" class="input" name="customerName" id="customerName" autocomplete="off" placeholder="Username">
					<input type="text" class="input" name="emailId" id="emailId" autocomplete="off" placeholder="Email Id">
					<input type="password" class="input" name="password" id="password" autocomplete="off" placeholder="Password">
					<input type="text" class="input" name="phoneNo" id="phoneNo" autocomplete="off" placeholder="Phone Number">
					<input type="text" class="input" name="address" id="address" autocomplete="off" placeholder="Address">
					<input type="text" class="input" name="zipCode" id="zipCode" autocomplete="off" placeholder="Zip Code">
					
					<input type="submit" class="button" value="Sign Up">
				</form><!--.login-form-->
				<div class="help-text">
					<p>By signing up, you agree to our</p>
					<p><a href="#">Terms of service</a></p>
				</div><!--.help-text-->
			</div><!--.signup-tab-content-->


		</div><!--.tabs-content-->
	</div><!--.form-wrap-->

<script>

jQuery(document).ready(function($) {
	tab = $('.tabs h3 a');

	tab.on('click', function(event) {
		event.preventDefault();
		tab.removeClass('active');
		$(this).addClass('active');

		tab_content = $(this).attr('href');
		$('div[id$="tab-content"]').removeClass('active');
		$(tab_content).addClass('active');
	});
});

</script>
</body>

</html>