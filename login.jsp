<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>



<title> shopping cart here</title>
</head>
<body>

<form:form action="isValidUser" method="post">

Enter user name:<input type="text" value="name">
<br/>

enter the password: <input type="password" value="password"/>
<br/>
<input type="submit">

</form:form>
</body>
</html>






