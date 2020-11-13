<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>로그인</h1>
	
	<form action="memberlogin" method="post">
	<font color="red">${message}</font>
		ID:<input type="text" name="mid"><br>
		PW:<input type="password" name="mpassword"><br>
		<input type="submit" value="login">
	</form>

</body>
</html>