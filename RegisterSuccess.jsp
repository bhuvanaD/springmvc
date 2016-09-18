<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body{background-color:lavender;}
h1{color:#800000;
font-weight:bold;
font-size:40px;
font-family:Tahoma Sans-serif Geneva;
}
h2{color:#000080;
font-size:35px;
}
.button {
  padding: 15px 25px;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 10px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</head>
<body background="E:\programs\ShoppingCartFrontEnd\src\main\webapp\images\suc1.jpg"><center>
<h1>Welcome..</h1><img src="E:\programs\ShoppingCartFrontEnd\src\main\webapp\images\suc.jpg"></img>
<form class="form-horizontal" role="form" method="post">  
<div class="form-group">
    <label class="control-label col-sm-2" >USER NAME:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="uname">
    </div>
  </div><br>
  <div class="form-group">
    <label class="control-label col-sm-2">PASSWORD:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" name="pwd">
    </div>
  </div></div><center>
<button type="submit" class="button">SUBMIT</button></center>
<br><br><br><br></form>
</center>
</body>
</html>