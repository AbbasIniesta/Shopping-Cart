<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>

body{
  background:#fffff;
  font-family:'Arial'sans-serif;
  font-size:62.5%;
}
h1{
  font-weight:500;
}
img{
  max-width:100%;
}
#wrap{
  width:80%;
  margin:0 auto;
  padding-top:30px;
  padding-bottom:30px;
}
#product_layout_1{
  margin-top:30px;
}
#product_layout_1 .top{
  display:block;
  width:100%;
  margin-bottom:30px;
}
#product_layout_1 .bottom{
  display:block;
  width:100%;
  padding-top:30px;
  clear:both;
}
#product_layout_1 .product_images{
  width:30%;
  max-width:320px;
  float:left;
}
#product_layout_1 .product_info{
  width:66%;
  float:left;
  margin-left:4%;
}
#product_layout_1 .product_images .product_image_1{
   width:100%;
   border:2px solid lightgray;
   border-radius:3px;
}
#product_layout_1 .product_images .product_image_small{
  width:100%;
  margin-top:15px;
}
#product_layout_1 .product_images .product_image_small .product_image_2{
  width:30%;
  border:1px solid lightgray;
  float:left;
  margin-right:4%;
  box-sizing:border-box;
}
#product_layout_1 .product_images .product_image_small .product_image_3{
  width:30%;
  border:1px solid lightgray;
  float:left;
  margin-right:4%;
  box-sizing:border-box;
}
#product_layout_1 .product_images .product_image_small .product_image_4{
  width:30%;
  border:1px solid lightgray;
  float:left;
}
#product_layout_1 .product_info h1{
  font-size:3.6em;
  line-height:.8;
}
#product_layout_1 .product_info .price{
  margin-top:-40px;
}
#product_layout_1 .product_info .original_price{
  color:lightgray;
  font-size:2.8em;
  text-decoration:line-through;
  width:20%;
  display:inline-block;
}
#product_layout_1 .product_info .sale_price{
  color: #088A85;

  font-size:3.2em;
  display:inline-block;
  width:30%;
}
#product_layout_1 .product_info .rating{
  margin-top:-20px;
  color:goldenrod;
}
#product_layout_1 .product_info .product_description{
 font-size:1.4em;
}
#product_layout_1 .product_info .related_info{
  color:#088A85;
}
#product_layout_1 .product_info .related_info span{
  margin-right:5%;
}
#product_layout_1 .product_info .options{
  margin-top:30px;
}
#product_layout_1 .product_info .buying_options{
  width:45%;
  float:left;
}
#product_layout_1 .product_info .buying{
  width:45%;
  float:left;
  margin-left:10%;
}
#product_layout_1 .product_info .buying_options .select{
  width: 100%;
  max-width:300px;
  height: 40px;
  overflow: hidden;
  background: url('https://i.imgur.com/10e9Roz.png') no-repeat right #FFF;
  border: 1px solid #ccc;
  border-radius:3px;
  margin-top:15px;  
}
#product_layout_1 .product_info .buying_options select{
  background: transparent;
  display:block;
  width: 268px;
  padding: 5px;
  font-size: 2em;
  line-height: 1;
  border: 0;
  border-radius:0;
  height: 40px;
  -webkit-appearance: none;
}
#product_layout_1 .product_info .buying .quantity{
  font-size:2em;
  margin-top:15px;
  width:100%;
  display:block;
}
#product_layout_1 .product_info .buying .quantity [type="text"]{
  width:40px;
  height:40px;
  border:1px solid #ccc;
  border-radius:3px;
  padding:10px;
  box-sizing:border-box;
  font-size:1em;
}
#product_layout_1 .product_info .buying .cart{
  margin-top:25px;
  width:100%;
  float:left;
  margin-bottom:20px;
}
#product_layout_1 .product_info .buying .cart a.add{
  font-size:2em;
  color:#FFF;
  background:#04B486;
  text-decoration:none;
  padding:10px 20px;
  height:40px;
  border-radius:3px;
  margin-left:10px;
}
#product_layout_1 .product_info .social{
  font-size:1.4em;
  line-height:1.2;
  margin-bottom:15px;
  width:60%;
  display:block;
  margin:15px 0px;
}
#product_layout_1 .product_info .social .share{
  margin-top:-5px;
  margin-bottom:15px;
}
#product_layout_1 .product_info .buttons{
  margin-top:20px;
  margin-left:10px;
  display:inline-block;
  width:30%;
}
#product_layout_1 .reviews{
  width:30%;
  float:left;
  border:2px solid #aaa;
  border-radius:3px;
  margin-bottom:30px;
  box-sizing:border-box;
  max-width:320px;
}
#product_layout_1 .reviews h2{
 font-weight:500;
 font-size:2.4em;
}
#product_layout_1 .reviews .head{
  background:#088A85 ;
  text-align:center;
  padding:5px;  
}
#product_layout_1 .reviews .content{
  background:#FFF;
  padding-top:15px;
  padding-left:2em;
  padding-right:2em;
  padding-bottom:15px;
}
#product_layout_1 .reviews .content .name{
  font-size:1.8em;
}
#product_layout_1 .reviews .content .stars{
  color:goldenrod;
  margin-left:15px;
}
#product_layout_1 .reviews .content .review_text{
  margin-top:10px;
  font-size:1.2em;
}
#product_layout_1 .reviews .content .fullReview a{
 display:block;
 font-size:1.2em;
 text-align:center;
 color:#088A85;
 text-decoration:none;
}
#product_layout_1 .reviews .content .writeReview a{
 display:block;
 font-size:1.4em;
 text-align:center;
 color:#088A85;
 text-decoration:none;
}
#product_layout_1 .related{
  width:66%;
  float:left;
  display:block;
  margin-left:4%;
  border:2px solid #088A85;
  border-radius:3px;
  box-sizing:border-box;
}
#product_layout_1 .related .head{
  background:#088A85;
  padding:.3em;
}
#product_layout_1 .related .head h2{
 text-align:center;
 font-weight:500;
 font-size:2.4em;
}
#product_layout_1 .related .content{
  background:#FFF;
}
#product_layout_1 .related .relatedProducts{
  columns:3;
}
#product_layout_1 .related .products{
  text-align:center;
  width:25%;
  float:left;
  margin-left:6.25%;
  box-sizing:border-box;
}
#product_layout_1 .related .products .title{
  font-size:1.4em;
  line-height:1;
  min-height:24px;
}
#product_layout_1 .related .products .image img{
  border:2px solid #ccc;
  margin-top:-5px;
  cursor:pointer;
}
#product_layout_1 .related .products .price{
  color:#088A85;
  font-size:2.0em;
  margin-top:-2px;
}
@media (max-width:500px){
  #product_layout_1 .product_images,#product_layout_1 .product_info,#product_layout_1 .reviews,#product_layout_1 .related,#product_layout_1 .product_info .buying,#product_layout_1 .product_info .buying_options, #product_layout_1 .product_info .social{width:100%; margin-left:0;margin-right:0} 
}

</style>
</head>

<body>

<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<body>
  <div id="wrap">
    <div id="product_layout_1">
      <div class="top">
      <div class="product_images">
        <div class="product_image_1">
          <img src="http://upload.wikimedia.org/wikipedia/pt/d/dc/The_Hunger_Games.jpg"/>
        </div>
        </div>
        </div>
        <div class="product_info">
          <h1>Livro Jogos Vorazes</h1>
          <div class="price">
          <h2 class="original_price">r$90</h2>
          <h2 class="sale_price">R$5,00</h2>
          </div>
          <div class="rating">
            <i class="fa fa-star fa-3x"></i><i class="fa fa-star fa-3x"></i><i class="fa fa-star fa-3x"></i><i class="fa fa-star-half-o fa-3x"></i><i class="fa fa-star-o fa-3x"></i>
          </div>
          <div class="product_description">
          <p>The Hunger Games (Jogos Vorazes (título no Brasil) ou Os Jogos da Fome (título em Portugal)) é um romance para jovens e adultos escrito pela norte-americana Suzanne Collins. O primeiro de uma trilogia que leva seu nome, foi originalmente publicado nos Estados Unidos em 14 de setembro de 2008 pela editora Scholastic,1 2 e lançado em Portugal e no Brasil, respectivamente, em 20 de outubro de 2009 pela Editorial Presença e 29 de maio de 2010 pela Rocco.</p>
         
          </div>
         <div class="related_info">
           <span class="sku">código:1234567</span><span class="quantity">QT:85</span>
         </div>
         <div class="options">
         <div class="buying_options">
                 <div class="select">
                 <select id="color">
                   <option value = "1">Yellow</option>
                   <option value = "2">Red</option>
                   <option value = "3">Blue</option>
                   <option value = "4">Floral</option>
                 </select>
                 </div>
                 <div class="select">
                 <select id="size">
                   <option value = "1">Small</option>
                   <option value = "2">Medium</option>
                   <option value = "3">Large</option>
                   <option value = "4">X-Large</option>
                 </select>
                 </div>
          </div>
          <div class="buying">
                 <div class="quantity">
                   <label for="quantity">Quantity:</label>
                   <input type="text">
                 </div>
                 <div class="cart">
                   <a href="#" class="add">+ Add to Cart <i class="fa fa-shopping-cart fa-lg"></i></a>
                 </div>
          </div>
          </div>
                 <div class="social">
                   <span class="share">Share This:</span><span class="buttons"><img src="https://i.imgur.com/M8D8rr8.jpg"/></span>
           </div>
          </div>
        </div>
   </div>

</body>

</html>
