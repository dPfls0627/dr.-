<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<body>
<table border="1">
<caption>MemberList.jsp</caption>
        <tr align="center">
            <td>아이디</td>
            <td>비밀번호</td>
            <td>이름</td>
            <td>전화번호</td>
            <td>이메일</td>
            <td>생일</td>
            <c:if test="${sessionScope.loginId eq member.mid}">
            <td>수정</td>
             </c:if>
            
            
        </tr>
            <tr align="center">
                <td>${member.mid}</td>
                <td>${member.mpassword}</td>
                <td>${member.mname}</td>
                <td>${member.mphone}</td>
                <td>${member.memail}</td>
                <td>${member.mbirth}</td>
                <c:if test="${sessionScope.loginId eq member.mid}">
                <td><a href="membershow?mid=${member.mid}">수정</a>
                </c:if>
            </tr>
        <tr align="center">
            <td colspan="5" align="center"> 
                <a href="javascript:history.go(-1)">돌아가기</a>
            </td>
        </tr>
    </table>
    
</body>
</html>