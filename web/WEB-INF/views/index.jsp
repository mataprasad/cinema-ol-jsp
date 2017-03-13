<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="<c:url value="/api"/>" method="post">
		Login ID : <input type="text" name="userName"><br /> 
		Password : <input type="password" name="password"><br />
		<input type="text" name="name"><br /> 
		<input type="text" name="login.l1.name"><br /> 
		<input type="text" name="l1.l2.name"><br /> 
		 
		<input type="submit">
	</form>
</body>
</html>