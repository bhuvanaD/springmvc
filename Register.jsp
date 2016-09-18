<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
p {
	color: black;
	font-weight: bold;
	font-decoration: underline;
	font-size: 20px;
	font-family: Tahoma Sans-serif Geneva;
}

label {
	color: pink;
	font-weight: bold;
	font-size: 13px;
	font-family: arial;
}
</style>

</head>
<body
	background="E:\programs\ShoppingCartFrontEnd\src\main\webapp\images\reg.jpg">

	<script type="text/javascript">
		function a() {

			 if (document.form1.n4.value.length<10 || document.form1.n4.value.length>10) {
				alert("The mobile number must contains only 10 digits");
				return false;
			}
 
			

			if (document.form1.n8.value != document.form1.n9.value) {
				alert("your password does not match");
				return false;
			}

			else {
				window.alert("Your Registration is Successful");
				return true;

			}
		}
	</script>
	<center><p>Please Fill Up the details</p>
	</center>
		<div class="container">
		
		<!-- class="form-horizontal" role="form"  class="form" commandName="userDetails" name="form1" onsubmit="return a()" -->
		<c:url var="addAction" value="/RegisterSuccess">
		</c:url>
		<form:form method="post" action="${addAction}" commandName="Userdetails" class="form-horizontal">  
<div class="form-group">
    <label class="control-label col-sm-2"><spring:message text="ID:"/></label>
    <div class="col-sm-10">
    
					<input type="text" class="form-control" name="userid" required="true"/>
     
    </div>
  </div><br>
  <div class="form-group">
    <label class="control-label col-sm-2"><spring:message text="NAME:"/></label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" name="name" required="true"/>
    </div>
  </div><br>
  <div class="form-group">
    <label class="control-label col-sm-2"><spring:message text="EMAIL:"/></label>
    <div class="col-sm-10"> 
      <input type="email" class="form-control" name="email" required="true">
    </div>
  </div><br>
  <div class="form-group">
    <label  class="control-label col-sm-2"><spring:message text="MOBILE NO:"/></label>
    <div class="col-sm-10"> 
      <input type="number" class="form-control" name="contact" required="true" title="Please enter valid mobile number">
    </div>
  </div><br>
  <div class="form-group">
    <label class="control-label col-sm-2"><spring:message text="PAASWORD:"/></label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" name="password" pattern=".{6,8}" required="true" title="password should contain 6 to 8 characters">
    </div>
  </div>
  <br>
  	<center><button type="submit" class="btn btn-success">SUBMIT</button></center>
  </form:form>
		
	</div>
</body>
</html>
				<!-- <div
				style="width: 400px; height: 540px; padding: 10px; border: 3px solid black"> -->
				
				


			
		
		