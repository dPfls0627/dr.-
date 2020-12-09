<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="UTF-8">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cake | Template</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <script>
    	var arrInput = new Array(0);
    	var arrInputValue = new Array(0);
     
    	function addInput() {
      		arrInput.push(arrInput.length);
      		arrInputValue.push("");
      		display();
    	}
     
    	function display() {
      		document.getElementById('parah').innerHTML="";
      		for (intI=0;intI<arrInput.length;intI++) {
        	document.getElementById('parah').innerHTML+=createInput(arrInput[intI], arrInputValue[intI]);
      		}
    	}
     
    	function saveValue(intId,strValue) {
      		arrInputValue[intId]=strValue;
    	}  
     
    	function createInput(id,value) {
      		return "<input type='text' class='tname' placeholder='해시태그 입력' name='tname'>";
    	}
     
    	function deleteInput() {
      		if (arrInput.length > 0) { 
         		arrInput.pop(); 
         		arrInputValue.pop();
      		}
      		display(); 
   		}
    
    	
    	
    	
      	$(document).ready(function(){
    		$("#tagAdd").click(function(){
    			//jquery로 버튼태그 클릭했을때 함수를 호출하는 방법
    			
    			var tname = $("#tname").val(); //input에 입력한 네임 값 가져오기 
    			
    			var tnameList = []; //배열 선언
    			$("input[name='tname']:text").each(function(i) {
    		        tnameList.push($(this).val());
    		    }); // 같은 name값들을 배열에 담음
    			
    			var allData = { "tname": tname, "tnameArray": tnameList };
    			// input에 입력한 네임 값과 선언한 배열을 name/value 형태로 담는다.
    			
    			console.log(tname);
    			
    			$.ajax({
    				type :"post",
    				url : "hashtagwrite",
    				data : allData,
    				dataType : "json",
    				success : function(result){
    					console.log("해시태그 등록 성공");
    					alert("해시태그를 등록하였습니다.")
    					
    				/*    var output = "<h3>해시태그 목록</h3>";
    				   output += "<ol>";
    					//result는 값이 여러개가 들어 있기 때문에 반복문을 돌려줘야 함
    					for(var i in result){
    						output += "<li>"+result[i].tname+"</li>";
    					}
    					output +="</ol>";
    					$("#hashtagArea").html(output); */
    					
    					//댓글 입력 후 작성자와 내용을 지워주기 위한 코드	
    					 $("#tname").val("");
    					$(".tname").val("");
    				
    					
    				},
    				error : function(){
    					console.log("해시태그 등록 실패")
    				}
    			});
    		});
    	});  
    	
    function hashtagPop(){
    	window.open("hashtagpop", "a", "width=700, height=800, left=100, top=50"); 
    }
    
    function reserveCheck(reserveid){
    	console.log(reserveid);
    	location.href="reservecheck?reserveid="+reserveid;
    	
    /* 	for($i=0; $row=sql_fetch_array($result); $i++) {
    		   $j = $i + 1;
    		   echo "<button id='btn".$j."'>";  */
    }
    
    function reserveSearch(){
     	reservebox.submit(); 
    }
    
    </script>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/board/css/base.css"/>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
      <div class="loader"></div>
  </div>
  
  <!-- Offcanvas Menu Begin -->
  <div class="offcanvas-menu-overlay"></div>
  <div class="offcanvas-menu-wrapper">
      <div class="offcanvas__cart">
        <div class="offcanvas__cart__item">
            <a href="adminpage" style="color: black;"><img src="" alt="">관리자페이지</a>
        </div>
          <div class="offcanvas__cart__links">
              <a href="#"><img src="resources/img/icon/heart.png" alt=""></a>
              <a href="#" class="search-switch"><img src="resources/img/icon/search.png" alt=""></a>
          </div>
      </div>
      <div class="offcanvas__logo">
          <a href="index"><img src="resources/img/멍이냥 로고2.png" width="150px" alt=""></a>
      </div>
      <div id="mobile-menu-wrap"></div>
      <div class="offcanvas__option">
          <ul>
            <c:if test="${empty sessionScope.loginId}">
              <li><a href="register">회원가입</a></li>
              <li><a href="login">로그인</a></li>
              </c:if>
              <c:if test="${!empty sessionScope.loginId}">
              	<li><a href="register">회원가입</a></li>
              	<li><a href="logout">로그아웃</a></li>
              </c:if>
          </ul>
      </div>
  </div>
  <!-- Offcanvas Menu End -->
  
  <!-- Header Section Begin -->
  <header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="header__top__inner">
                        <div class="header__top__left">
                            <ul>
                                <c:if test="${empty sessionScope.loginId}">
              						<li><a href="register">회원가입</a></li>
             						<li><a href="login">로그인</a></li>
              					</c:if>
              					<c:if test="${!empty sessionScope.loginId}">
              						<li><a href="register">회원가입</a></li>
              						<li><a href="logout">로그아웃</a></li>
              					</c:if>
                            </ul>
                        </div>
                          <div class="header__logo">
                              <a href="/"><img src="resources/img/멍이냥 로고2.png" width="200px" alt=""></a>
                          </div>
                          <div class="header__top__right" style=" margin-top:-17px;">
                            <div class="header__top__right__cart" >
                                <a href="adminpage" style="color: black;"><img src="" alt="">관리자페이지</a>
                            </div>
                              <div class="header__top__right__links">
                                <div class="arlam" style="font-size: 3px; background-color: rgb(255, 145, 0); width: 15px; height: 15px; color: white;">10</div>
                                <img src="resources/img/hero/icon.jpg" style="width: 40%;" alt="none"/>
                                <a href="#" class="search-switch" style="margin-left: 10px;"><img src="resources/img/icon/search.png" alt=""></a>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="canvas__open"><i class="fa fa-bars"></i></div>
          </div>
      </div>
      <div class="container">
          <div class="row">
              <div class="col-lg-12">
                  <nav class="header__menu mobile-menu">
                      <ul>
                          <li><a href="index">홈</a></li>
                          <li><a href="멍이냥">소개</a></li>
                          <li><a href="hospital">병원</a>
                          <li><a href="shop">스토어</a>
                          <ul class="dropdown">
                              <li><a href="shop?type=G">그루밍</a></li>
                              <li><a href="shop?type=H">호텔</a></li>
                              <li><a href="shop?type=C">카페</a></li>
                              <li><a href="shop?type=K">유치원</a></li>
                              <li><a href="shop?type=C">문화공간</a></li>
                          </ul>
                          </li>
                          <li><a href="공지사항">커뮤니티</a>
                              <ul class="dropdown">
                                  <li><a href="공지사항?type=news">공지사항</a></li>
                                  <li><a href="자유게시판?type=free">자유게시판</a></li>
                                  <li><a href="사진갤러리?type=Photo">사진갤러리</a></li>
                                  <li><a href="상담게시판?type=question">상담게시판</a></li>
                                  <li><a href="강의동영상?type=vod">강의 동영상</a></li>
                              </ul>
                          </li>
                          <li><a href="contact">문의</a></li>
                      </ul>
                  </nav>
              </div>
          </div>
      </div>
  </header>
  <!-- Header Section End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2>Admin Page</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="/">Home</a>
                        <span>Admin Page</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- About Section Begin -->
    <section class="about spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="resources/img/동물2.jpg">
                        </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="col">
                        <!-- TABLE NO PADDING -->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">로그인 승인</h3>
                            </div>
                            <div class="panel-body no-padding">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>회원번호</th> <th>ID</th> <th>상호명</th>
                                            <th>주소</th> <th>이메일</th> <th>사업자번호</th>
                                            <th>홈페이지</th> <th>승인</th> <th>삭제</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="shopMember" items="${sMemList}">
                                            <tr>
                                            	<td>${shopMember.shopid}</td>
                                                <td>${shopMember.sid}</td>
                                                <td>${shopMember.sname}</td>
                                                <td>${shopMember.saddress}</td>
                                                <td>${shopMember.semail}</td>
                                                <td>${shopMember.slicense}</td>
                                                <td>${shopMember.surl}</td>
                                                <td><button onclick="location.href='memberloginok?sid=${shopMember.sid}'" style="width: 50px;">승인</button></td>
                                                <td><button onclick="location.href='shopmemberdelete?sid=${shopMember.sid}'" style="width: 50px;">삭제</button></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END TABLE NO PADDING -->
                    </div>
                        
                
            </div>
        </div>
    </section>
    <!-- About Section End -->



    <!-- Tag Section Begin -->
    <section class="testimonial spad">
        <div class="container">
            <div class="cart__discount">
                <h6>태그 추가/삭제</h6>
                <input type="button" onclick="addInput();" value="태그추가">
                <input type="button" onclick="deleteInput();" value="태그제거">
                <input type="button" id="tagAdd" value="태그저장">
                <form action="#" method="post" name="hashtagform">
                    <input type="text" id="tname" name="tname" placeholder="해시태그 입력">
              	  	<div id="parah"></div>
              	</form>   	  	
            </div>
            <a href="#" onclick="hashtagPop()"><img src="resources/img/sort_ascending_icon_152530.png" width="30">해시태그 목록 조회</a>
           <!--  <br> -->
        </div>
    </section>
    <!-- Tag Section End -->
    




    <!-- Team Section Begin -->
    <section class="team spad">
        <div class="container">
            <!-- TABLE STRIPED -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">예약 목록</h3>
                                </div>
                                <br>
								<div class="panel-body">
                                        <form action="reservesearch" method="get" name="reservebox">
                                            <select id="searchtype" name="searchtype" onchange="reserveSearch()">
                                                <option value="">전체</option>
                                                <option value="reserveWait" id="wait">예약 대기</option>
                                                <option value="reserveCom" id="com">예약 완료</option>
                                            </select>
                                        </form>
                                        <br><br>
									<table class="table">
                                    	<tr>
                                        	<th>#</th> <th>회원 ID</th> <th>회원 이름</th>
                                            <th>예약한 날짜</th> <th>시작일</th> <th>종료일</th>
                                            <th>예약 확인</th>
                                        </tr>
                                            <c:forEach var="reserve" items="${reserveList}">
                                                <tr>
                                                    <td>${reserve.reserveid}</td>
                                                    <td>${reserve.mid}</td>
                                                    <td>${reserve.mname}</td> 
                                                    <td>${reserve.rdate}</td>
                                                    <td>${reserve.rstartdate}</td>
                                                    <td>${reserve.renddate}</td>
                                                    <td>
                                                    	<c:choose>
                                                    		<c:when test="${reserve.rstate eq '예약대기'}">
                                                    			<button onclick="reserveCheck('${reserve.reserveid}')" style="width: 100%;">확인</button>			
                                                    		</c:when>
                                                    		<c:otherwise>
                                                    		    <button onclick="reserveCheckBtn()" style="width: 100%;" disabled>확인완료</button>
                                                    		</c:otherwise>
                                                    	</c:choose>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </table>
									</div>
							</div>
							<!-- END TABLE STRIPED -->
						</div>
            
        </div>
    </section>
    <!-- Team Section End -->

    <!-- About Section Begin -->
    <section class="about spad">
        <div class="container">
            <div class="row">
                
            <div class="row">
                <div class="col">
                    <div class="col">
                        <!-- TABLE NO PADDING -->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">회원 관리</h3>
                            </div>
                            <div class="panel-body no-padding">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>회원번호</th> <th>ID</th> <th>이름</th>
                                            <th>별명</th> <th>이메일</th> <th>번호</th>
                                            <th>주소</th> <th>삭제</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="member" items="${memberList}">
                                        <c:if test="${member.mid ne 'admin'}">
                                            <tr>
                                                <td>${member.memberid}</td>
                                                <td>${member.mid}</td>
                                                <td>${member.mname}</td>
                                                <td>${member.mnickname}</td>
                                                <td>${member.memail}</td>
                                                <td>${member.mphone}</td>
                                                <td>${member.maddress}</td>
                                                <td><button onclick="location.href='memberdelete?mid=${member.mid}'" style="width: 50px;">삭제</button></td>
                                            </tr>
                                        </c:if>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END TABLE NO PADDING -->
                    </div>
                        
                
            </div>
        </div>
    </section>

    <!-- Footer Section Begin -->
 <footer class="footer set-bg" data-setbg="resources/img/footer.jpg" style="background-color:#f08632;">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="footer__widget">
					<h6>운영시간</h6>
					<ul>
            <li style="color: white;">월요일 - 금요일 : 08:00 am – 08:30 pm</li>
            <li style="color: white;">토요일 : 10:00 am – 16:30 pm</li>
            <li style="color: white;">주말, 공휴일은 쉽니다.</li>
					</ul>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="footer__about">
					<div class="footer__logo">
						<a href="#"><img src="resources/img/멍이냥 로고2.png" alt=""
							></a>
					</div>
					<p style="color: white;">펫오너에게는 가장 빠르게 펫병원 선택과 예약이 가능한 서비스를 
						펫병원에게는 펫병원의 매출증대를 위한 최상의 마케팅 서비스를 제공하겠습니다.</p>
					<div class="footer__social">
						<a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-instagram"></i></a>
						<a href="#"><i class="fa fa-youtube-play"></i></a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="footer__newslatter">
					<h6>알림서비스</h6>
					<p style="color: white;">최신 업데이트 및 혜택을 받으세요.</p>
					<form action="#">
						<input type="text" placeholder="Email">
						<button type="submit"><i class="fa fa-send-o"></i></button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<p class="copyright__text text-white"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by 2남2녀
					  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				  </p>
			  </div>
			  <div class="col-lg-5">
				<div class="copyright__widget">
					<ul>
						<li><a href="#">이용약관</a></li>
						<li><a href="#">개인정보처리방침</a></li>
						<li><a href="#">광고문의/관리</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.barfiller.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>

</html>