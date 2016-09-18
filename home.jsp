<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 60px;
      border-radius: 10px;
     
    }
   
    /* Remove the jumbotron's default bottom margin */
      .jumbotron {
      margin-bottom: 0;
      padding:5px;
     
         }
         footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
   
    h2{
    color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;

font-weight:bold;
font-size:40px;
}
#header {
position:fixed;
top:0px;
left:0px;
width:100%;
padding:15px;
}

/* .thumbnail {
    padding: 0 0 30px 0;
    border: black;
    border-radius: 5px;
}

.thumbnail img {
    width: 50%;
    height: 50%;
    margin-bottom: 30px;
    border color:black;
}
     */
     .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
     width:70%;
      margin: auto;
  }
  </style>
</head>
<body>
<div class="jumbotron">
   <img src="E:\programs\ShoppingCartFrontEnd\src\main\webapp\images\babykids6.png" width="1000" height="200">
 
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
          </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li>
 
      <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">Kids Clothing<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="girlsclothing.jsp">Girls' Clothing</a></li>
        <li><a href="#">Boys' Clothing</a></li>
        <li><a href="#">Baby Girl Clothing</a></li>
        <li><a href="#">Baby Boy Clothing</a></li>
      </ul>
    </li>
 
    <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown"  href="#">Kids Footwear<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="#">Girls' Footwear</a></li>
       <li><a href="#">Boys' Footwear</a>        </li>
        <li><a href="#">Baby Footwear</a></li>
       
      </ul>
    </li>
    
    <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">Toys<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="#">Soft Toys</a></li>
        <li><a href="#">Musical Toys</a></li>
        <li><a href="#">Remote Control Toys</a></li>
       
       
      </ul>
    </li>
    
    <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">Baby Care<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="#">Baby Gifting Sets</a></li>
        <li><a href="#">Baby Bedding</a></li>
        <li><a href="#">Baby Grooming</a></li>
        <li><a href="#">Baby Bath Skin Care</a></li>
       
      </ul>
    </li>
 
 
 </ul>
 
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="LoginHere"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!--Indicators-->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
     
   
  </ol>

 <!-- Wrapper for slides-->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="E:\programs\ShoppingCartFrontEnd\src\main\webapp\images\babykids.jpg" width="460" height="345">
      <div class="carousel-caption">
          <h3>Cute Doll</h3>
         
        </div>
    </div>

    <div class="item">
      <img src="E:\programs\ShoppingCartFrontEnd\src\main\webapp\images\babykids1.png" width="460" height="345">
      <div class="carousel-caption">
          <h3>Child Toys Playing People Play</h3>
          
        </div>
    </div>

    <div class="item">
      <img src="E:\programs\ShoppingCartFrontEnd\src\main\webapp\images\babykids2.jpg" width="460" height="345">
      <div class="carousel-caption">
          <h3>Bear Toys</h3>
          
        </div>
    </div>
<div class="item">
      <img src="E:\programs\ShoppingCartFrontEnd\src\main\webapp\images\babykids3.jpg" width="460" height="345">
      <div class="carousel-caption">
          <h3>Toy Ducks,Plastic,Toys,Ducks</h3>
         
        </div>
    </div>
   
  </div>
  
  <!-- Left and right controls-->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>  
<footer class="container-fluid text-center">
  <p><span class="glyphicon glyphicon-copyright-mark"></span>      Online Store Copyright</p>

 
</footer>
</body>
</html>