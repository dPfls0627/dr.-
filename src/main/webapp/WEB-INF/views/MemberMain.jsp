<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
<h2>MemberMain.jsp</h2>
<h2>${sessionScope.loginId} 님 환영합니다.</h2>
<c:if test="${sessionScope.loginId eq 'admin'}">
<a href="memberlist">회원목록 조회</a>
</c:if>
</body>
</html>