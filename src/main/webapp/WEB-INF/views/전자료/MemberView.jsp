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
<caption>마이페이지</caption>
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
    <h4>내가 작성한 글목록</h4>
    <table border="1">
		<thead>
			<tr>
				<th>글번호</th>
				<th>작성자</th>
				<th>글제목</th>
				<th>작성일자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="board" items="${boardList}">
				<tr>
					<td>${board.bnumber}</td>
					<td>${board.bwriter}</td>
					<td><a
						href="boardview?bnumber=${board.bnumber}">${board.btitle}</a></td>
					<td>${board.bdate}</td>
					<td>${board.bhits}</td>
				</tr>
				<br>
			</c:forEach>
		</tbody>
    </table>
</body>
</html>