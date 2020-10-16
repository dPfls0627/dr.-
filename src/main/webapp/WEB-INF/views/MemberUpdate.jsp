<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
</head>
<body>
	<h1>정보수정</h1>

	<form action="memberupdate" method="post">
		ID:<input type="text" name="mid" value="${member.mid}" readonly><br>
		PW:<input type="password" name="mpassword" value="${member.mpassword}"><br>
		NAME:<input type="text" name="mname" value="${member.mname}"><br>
		PHONE:<input type="tel" name="mphone" value="${member.mphone}"><br>
		EMAIL:<input type="email" name="memail" value="${member.memail}"><br>
		<input type="submit" value="Update">
	</form>


</body>
</html>