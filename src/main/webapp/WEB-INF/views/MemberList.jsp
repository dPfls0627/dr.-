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
            
        </tr>
        <c:forEach items="${memberList}" var="memberlist">
            <tr align="center">
                <td>${memberlist.mid}</td>
                <td>${memberlist.mpassword}</td>
                <td>${memberlist.mname}</td>
                <td>${memberlist.mphone}</td>
                <td>${memberlist.memail}</td>
                <td>${memberlist.mbirth}</td>
                <td><a href="memberview?mid=${memberlist.mid}">조회</a>
                <td><a href="memberdelete?mid=${memberlist.mid}">삭제</a>
            </tr>
        </c:forEach>
        <tr align="center">
            <td colspan="5" align="center"> 
                <a href="javascript:history.go(-1)">돌아가기</a>
            </td>
        </tr>
    </table>
    
</body>
</html>