<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	function idOverlap() {
		var inputId = document.getElementById("mid").value;
		//ajax(Asynchronous javascript and XML)
				$.ajax({
					type : "post", //전송방식
					url : "idoverlap", //url주소
					data : {"mid":inputId}, // 데이터안에 또다른 데이터를 넣을수있다.
				dataType : "text", //데이터 형식
				success : function(result){ //통신 성공시
					if(result =="OK"){
						alert("사용가능한 ID입니다.")
					}else{
						alert("이미 사용중인 ID 입니다.")
					}
				},
				error : function(){	//통신 실패시 
						alert("전송실패~")
				}
				
				});
	}
</script>
<script>
	function idlap() {
		var inputId = document.getElementById("mid").value;
		var idch = document.getElementById("idch");
		//ajax(Asynchronous javascript and XML)
				$.ajax({
					type : "post", //전송방식
					url : "idoverlap", //url주소
					data : {"mid":inputId}, // 데이터안에 또다른 데이터를 넣을수있다.
				dataType : "text", //데이터 형식
				success : function(result){ //통신 성공시
				if(result =="OK"){
					idch.style.color = "green";
					idch.innerHTML= "사용가능한 ID입니다.";
					}else{
					idch.style.color = "red";
					idch.innerHTML="사용할수없는 ID입니다.";
					}
				},
				error : function(){	//통신 실패시 
						alert("전송실패~")
				}
				
				});
	}
	</script>
	
</head>
<body>
	<h1>회원가입</h1>
	카카오 아이디 : ${kakaoId}

	<form action="memberjoin" method="post">
		<c:choose>
		<c:when test="${kakaoId ne null}">
		ID:<input type="text" name="mid" id="mid" onkeyup="idlap()">
		<input type="hidden" name="kakaoId" value="${kakaoId}"><br>
		<span id="idch"></span><br>
		</c:when>
		</c:choose>
		
		ID:<input type="text" name="mid" id="mid" onkeyup="idlap()"><span id="idch"></span><br>
		<input type="button" value="아이디중복확인" onclick="idOverlap()"> <br>
		PW:<input type="password" name="mpassword"><br>
		NAME:<input type="text" name="mname"><br>
		PHONE:<input type="tel" name="mphone"><br>
		EMAIL:<input type="email" name="memail"><br>
		BIRTHDATE:<input type="date" name="mbirth"><br>
		<input type="submit" value="SIGNUP">
	</form>


</body>
</html>