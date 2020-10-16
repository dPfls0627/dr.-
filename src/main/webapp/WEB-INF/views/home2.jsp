<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	<script>
		function boardWrite() {
			location.href = 'boardwriteform';
		}
		function boardWriteFile() {
			location.href = 'boardwritefileform';
		}
		function boardList() {
			location.href = 'boardlist';
		}
		function boardListPaging() {
			location.href = 'boardlistpaging';
		}
		
	</script>
	
</head>
<body>
<h1>Home.jsp</h1>
	<button onclick="boardWrite()">글쓰기</button>
	<button onclick="boardWriteFile()">글쓰기(파일)</button>
	<button onclick="boardList()">글목록</button>
	<button onclick="boardListPaging()">페이징글목록</button>
	
	
</body>
</html>
