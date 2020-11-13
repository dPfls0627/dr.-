<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function boardSearch() {
		searchform.submit();
	}
	function logout(){
		location.href="memberlogout";
		
	}
</script>
</head>
<body>
	<h2>게시글 목록</h2>
	<c:if test="${sessionScope.loginId eq 'admin'}">
<a href="memberlist">회원목록 조회</a>
	</c:if>
	<c:if test="${sessionScope.loginId ne 'admin'}">
<a href="memberview?mid=${sessionScope.loginId}">마이페이지 </a>
	</c:if>
<button onclick="logout()" >로그아웃</button>
	<form action="boardsearch" method="get" name="searchform">
		<select id="searchtype" name="searchtype">
			<option value="searchtitle">제목</option>
			<option value="searchwriter">작성자</option>
		</select>
		<input type="text" name="keyword" placeholder="검색어입력">
		<input type="button" onclick="boardSearch()" value="검색">
	</form>
	
		<table border="1">
		<tr>
			<td>글번호</td>
			<td>작성자</td>
			<td>글제목</td>
			<td>작성일자</td>
			<td>조회수</td>
		</tr>
		<c:forEach var="board" items="${boardList}" >
			<tr>
				<td>${board.bnumber}</td>
				<td><a href="memberpopup?mid=${board.bwriter}&page=${paging.page}"
					onclick="window.open(this.href,'_blank','width=300px,height=500px,toolbars=no,scrollbars=no');
					return false;">${board.bwriter}</a></td>
				<td><a
					href="boardview?bnumber=${board.bnumber}&page=${paging.page}">${board.btitle}</a></td>
				<td>${board.bdate}</td>
				<td>${board.bhits}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5"><button onclick="location.href='boardwritefileform'">글쓰기</button> </td>
		</tr>
		<tr>
			<td colspan="5"><button onclick="location.href='bhits'">조회순정렬</button> </td>
		</tr>
	</table>

	<!-- 페이징 처리 -->
	<c:if test="${paging.page<=1}">
	[이전]&nbsp;
	</c:if>
	
	<c:if test="${paging.page>1}">
		<a href="boardlistpaging?page=${paging.page-1}">[이전]</a>&nbsp;
	</c:if>
	
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
		<c:choose>
			<c:when test="${i eq paging.page}">
			${i}
			</c:when>
			<c:otherwise>
				<a href="boardlistpaging?page=${i}">${i}</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>

	<c:if test="${paging.page>=paging.maxPage}">
		[다음]
	</c:if>
	
	<c:if test="${paging.page<paging.maxPage}">
		<a href="boardlistpaging?page=${paging.page+1}">[다음]</a>
	</c:if>

	
	
	
	
</body>
</html>