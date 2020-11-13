<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원팝업</title>
</head>
<body>
	<h2>회원정보</h2>
	아이디 : ${member.mid} <br>
	이름 : ${member.mname} <br>
	전화번호 : ${member.mphone} <br>
	이메일 : ${member.memail} <br>
	생일 : ${member.mbirth} <br>
	프로필사진 :<br>
	<img src="resources/img/${member.profilename}" width="200" height="200">
</body>
</html>



