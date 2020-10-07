<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>

	<form action="memberjoin" method="post">
		ID:<input type="text" name="mid"><br>
		PW:<input type="password" name="mpassword"><br>
		NAME:<input type="text" name="mname"><br>
		PHONE:<input type="tel" name="mphone"><br>
		EMAIL:<input type="email" name="memail"><br>
		BIRTHDATE:<input type="date" name="mbirth"><br>
		<input type="submit" value="SIGNUP">
	</form>


</body>
</html>