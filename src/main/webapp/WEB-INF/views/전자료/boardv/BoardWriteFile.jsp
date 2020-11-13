<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function boardWrite(){
			boardwriteform.submit();
		}
	</script>
</head>
<body>
	<h2>BoardWriteFile.jsp</h2>
		<form action="boardwritefile" method="post" name="boardwriteform"
			enctype="multipart/form-data">
			작성자 : 
				<input type="text" name="bwriter" id="bwriter" value="${sessionScope.loginId}" readonly> <br>
			제목 : 
				<input type="text" name="btitle" id="btitle"><br>
			내용 : 
				<textarea name="bcontents" id="bcontents" rows="5"></textarea><br>
			첨부파일 : 
				<input type="file" name="bfile" id="bfile"><br>				
		</form>
		<button class="btn btn-sm btn-primary" onclick="boardWrite()">글등록</button>
		<button onclick="location.href='boardlistpaging?page=${page}'">목록</button>

</body>
</html>