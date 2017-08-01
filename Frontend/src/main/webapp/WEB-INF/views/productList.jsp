<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
<style>
/* BASIC RESET */
ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,body,html,p,blockquote,fieldset,input{margin:0; padding:0;}

/* HTML ELEMENTS */
body { background-color:#deddcd; font:14px/21px Arial,Helvetica,sans-serif; }
h1 { font: bold 65px/60px Helvetica, Arial, Sans-serif; text-align: center; color: #eee; text-shadow: 0px 2px 6px #333; }
h1 small{ font-size: 20px; text-transform:uppercase; letter-spacing: 14px; display: block; color: #000; }
h2 a { display: block; text-decoration: none; margin: 0 0 30px 0; font: italic 45px Georgia, Times, Serif;  text-align: center; color: #bfe1f1; text-shadow: 0px 2px 6px #333; }
h2 a:hover { color: #90bcd0; }

/* COMMON CLASSES */
.break { clear:both; }

/* WRAPPER */
#wrapper { width:960px; margin:40px auto; }

/* CONTENT */
#content { }
#content .info { padding:10px; }

/* MOVIE POSTERS */
#movieposters { list-style:none; margin:100px 0; height:550px; }
#movieposters li { display:inline; float:left;
	-webkit-perspective: 500; -webkit-transform-style: preserve-3d;
	-webkit-transition-property: perspective; -webkit-transition-duration: 0.5s; }
#movieposters li:hover { -webkit-perspective: 5000; }
	
#movieposters li img { border:10px solid #fcfafa; -webkit-transform: rotateY(30deg);
	-moz-box-shadow:0 3px 10px #888; -webkit-box-shadow:0 3px 10px #888;
	-webkit-transition-property: transform; -webkit-transition-duration: 0.5s; }
#movieposters li:hover img { -webkit-transform: rotateY(0deg); }

.movieinfo { border:10px solid #fcfafa; padding:20px; width:200px; height:180px; background-color:#deddcd; margin:-195px 0 0 55px; position:absolute;
	-moz-box-shadow:0 20px 40px #888; -webkit-box-shadow:0 20px 40px #888;
	-webkit-transform: translateZ(30px) rotateY(30deg);
	-webkit-transition-property: transform, box-shadow, margin; -webkit-transition-duration: 0.5s; }
	
#movieposters li:hover .movieinfo { -webkit-transform: rotateY(0deg); -webkit-box-shadow:0 5px 10px #888; margin:-175px 0 0 30px; }
	
.movieinfo h3 { color:#7a3f3a; font-variant: small-caps; font-family:Georgia,serif,Times; text-align:center; padding-bottom:15px; }
.movieinfo p { padding-bottom:15px; }
.movieinfo a { background-color:#7a3f3a; padding:5px 10px; color:#eee; text-decoration:none; display:block; width:80px; text-align:center; margin:0 auto;
	-moz-border-radius:5px; -webkit-border-radius:5px; }
.movieinfo a:hover, .movieinfo a:focus { background-color:#6a191f; color:#fff; }
</style>
</head>
<body >

<ul id="movieposters">
			<li>
				<img src="http://demo.marcofolio.net/3d_animation_css3/images/01_iron_man_2.jpg" alt="Iron Man 2">
				<div class="movieinfo">
					<h3>Iron Man 2</h3>
					<p>With the world now aware of his dual life as the armored superhero Iron Man, billionaire inventor Tony...</p>
					<a href="productDetails" title="Iron Man 2">More info</a>
				</div>
			</li>
			<c:forEach items="${productList}" var="product">
			<a href="ProductDetails?productId=${product.productId}">
			<li>
				<img src="resources/Images/ProductImages/${product.productId}.jpg" width="290" height="380"/>
				<div class="movieinfo">
						<h2>Name : ${product.productName }</h2>
					<p>${product.productDesc }...</p><p>Price : ${product.productPrice }</p>
					<%-- <a href="ProductDetails?productId=${product.productId}" title="${product.productName }">More info</a> --%>
				</div>
			</li></a>
			</c:forEach>
			<li>
				<img src="http://demo.marcofolio.net/3d_animation_css3/images/03_tron_legacy.jpg" alt="Tron Legacy">
				<div class="movieinfo">
					<h3>Tron Legacy</h3>
					<p>Sam Flynn, the tech-savvy 27-year-old son of Kevin Flynn, looks into his father's disappearance and finds...</p>
					<a href="productDetails" title="Tron Legacy">More info</a>
				</div>
			</li>
		</ul>

</body>
</html>
