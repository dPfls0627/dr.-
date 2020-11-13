<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	$(document).ready(function(){
		$("#commentWriteBtn").click(function(){
			var cwriter = $("#cwriter").val();
			var ccontents = $("#ccontents").val();
			var cbnumber = "${boardView.bnumber}";
			$.ajax({
				type : "post",
				url : "comment/commentwrite",
				data : {
						"cwriter" : cwriter,
						"ccontents" : ccontents,
						"cbnumber" : cbnumber},
				dataType : "json",
				success : function(result){
					console.log("댓글 등록 성공");
					console.log(result);
					var output = "<table border='1'>";
					output += "<tr><th>작성자</th>";
					output += "<th>내용</th></tr>";
					for(var i in result){
						output += "<tr>";
						output += "<td>"+result[i].cwriter+"</td>";
						output += "<td>"+result[i].ccontents+"</td>";
						output += "</tr>";
					}
					output += "</table>";
					$("#commentArea").html(output);
					$("#cwriter").val("");
					$("#ccontents").val("");
				},
				error : function(){
					console.log("댓글 등록 실패");
				}
			});
		});
	});
</script>
</head>
<body>
	<h2>BoardView.jsp</h2>
	<table border="1">
	<tr>
		<td>제목</td>
		<td>${boardView.btitle}</td></tr>
	<tr>
		<td>작성자</td>
		<td>${boardView.bwriter}</td></tr>		
	<tr>
		<td>내용</td>
		<td>${boardView.bcontents}</td></tr>
	<tr>
		<td>조회수</td>
		<td>${boardView.bhits}</td></tr>
	</table>	
	${boardView.bfilename}
		<a href="/member/common/download.do?fileName=${boardView.bfilename}">다운로드</a><br>		
	<button onclick="location.href='boardlistpaging?page=${page}'">목록</button>
	<c:if test="${sessionScope.loginId eq boardView.bwriter }"> 
	<button onclick="location.href=
				'boardupdate?bnumber=${boardView.bnumber}'">수정</button>
				</c:if>
	<c:if test="${sessionScope.loginId eq boardView.bwriter || sessionScope.loginId eq 'admin' }"> 
	<button onclick="location.href=
				'boarddelete?bnumber=${boardView.bnumber}'">삭제</button>				
	</c:if>
	<table>
	<tr align="center">
      <td colspan="5" align="center"> 
                <a href="javascript:history.go(-1)">돌아가기</a>
       </td>
     </tr>
     </table>
	<div id="commentWrite">
		작성자 : <input type="text" id="cwriter" value="${sessionScope.loginId}" readonly><br>
		내용 : <input type="text" id="ccontents"><br>
		<button id="commentWriteBtn">댓글입력</button>
	</div>
	
	<div id="commentArea">
		<table border="1">
			<tr><th>작성자</th>
				<th>내용</th></tr>
			<c:forEach var="comment" items="${commentList}">
				<tr>
					<td>${comment.cwriter}</td>
					<td>${comment.ccontents}</td></tr>
			</c:forEach>
		</table>
	
	</div>
	
	
	
</body>
</html>












