<html>

<head>
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
</head>

<body>
<form action="newsupplier" method="post">
<section class="cform">
  <article class="title">
    <span>Supplier Form</span>
  </article>
  <article class="form">
  <div>Supplier Id</div>                                
  <input type="text" placeholder="" name="supplierId" id="supplierId" value="${supplier.supplierId}" readonly="true" >
    <div>Supplier Name</div>
    <input type="text" name="supplierName" id="supplierName" placeholder="" value="${supplier.supplierName}" >
      <div>Supplier Phone No</div>
    <input type="text" name="supplierPhoneNo" id="supplierPhoneNo" placeholder="" value="${supplier.supplierPhoneNo}" >
      <div>Supplier Mail ID</div>
    <input type="text" name="supplierMailID" id="supplierMailID" placeholder="" value="${supplier.supplierMailID}" >
      <div>Supplier Address</div>
    <input type="text" name="supplierAddress" id="supplierAddress" placeholder="" value="${supplier.supplierAddress}" >
  

      </article>
  <article class="btn">
    <input type="submit" value="Submit">
  </article>
</section>  
  </form>

</body>

</html>



