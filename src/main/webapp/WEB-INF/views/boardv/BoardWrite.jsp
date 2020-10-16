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
	<h2>BoardWrite.jsp</h2>
		<form action="boardwrite" method="post" name="boardwriteform">
			<label for="bwriter">작성자 : </label>
				<input type="text" name="bwriter" id="bwriter"> <br>
			<label for="bpassword">비밀번호 : </label>
				<input type="text" name="bpassword" id="bpassword"><br>
			<label for="btitle">제목 : </label>
				<input type="text" name="btitle" id="btitle"><br>
			<label for="bcontents">내용 : </label>
				<textarea name="bcontents" id="bcontents" rows="5"></textarea><br>
		</form>
		<button class="btn btn-sm btn-primary" onclick="boardWrite()">글등록</button>
		<button class="btn btn-sm btn-primary" onclick="boardList()">목록</button>

</body>
</html>