<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="UTF-8">

<!-- Mirrored from www.geojeyouth.com/web/find by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Nov 2020 15:22:40 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
	<meta charset="UTF-8">
		<title>아이디/비밀번호 찾기 | 거제청년센터 이룸 공식사이트</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
	<meta name="HandheldFriendly" content="true" />
    <meta name="format-detection" content="telephone=no" />
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-179037619-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-179037619-1');
	</script>


	 <!-- Google Font -->
	 <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
	 rel="stylesheet">
	 <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
	 rel="stylesheet">
 
	 <!-- Css Styles -->
	 <!-- <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"> -->
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css" type="text/css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/barfiller.css" type="text/css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css" type="text/css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">

     	 
     <link href="${pageContext.request.contextPath}/resources/board/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath}/resources/board/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/board/css/base.css"/>
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/board/js/jquery-ui.css"/>
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/board/css/layout.css"/>
                                 
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/board/css/content.css"/>
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/board/css/utobiz.css"/>
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/board/css/bbs.css"/>
     
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/board/js/jquery-1.12.2.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/board/js/jquery.bxslider.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/board/js/jquery-ui.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/board/js/custom.js"></script>
      <!-- Global site tag (gtag.js) - Google Analytics -->
 <script async src="https://www.googletagmanager.com/gtag/js?id=UA-179037619-1"></script>
 <script>
   window.dataLayer = window.dataLayer || [];
   function gtag(){dataLayer.push(arguments);}
   gtag('js', new Date());
 
   gtag('config', 'UA-179037619-1');
 </script>

</head>
<body>

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
                                <a href="index"><img src="resources/img/멍이냥 로고2.png" width="200px" alt=""></a>
                            </div>
                            <div class="header__top__right" style=" margin-top:-17px;">
                              <div class="header__top__right__cart" >
                              	<c:choose>
                					<c:when test="${empty sessionScope.loginId}">
                					</c:when>
              						<c:when test="${sessionScope.loginId eq 'admin'}">
                						<a href="adminpage" style="color: black;"><img src="" alt="">관리자페이지</a>
               					 	</c:when>
                					<c:otherwise>
                						<a href="mypage" style="color: black;"><img src="" alt="">마이페이지</a>                              	
                					</c:otherwise>
              					</c:choose>
                              	
                              </div>
                                <div class="header__top__right__links">
                                	<c:if test="${!empty sessionScope.loginId}">	
                                  		<div class="arlam" style="font-size: 3px; background-color: rgb(255, 145, 0); width: 15px; height: 15px; color: white;">10</div>
                                  		<img src="resources/img/hero/icon.jpg" style="width: 40%;" alt="none"/>
                                	</c:if>
                                  	<a href="#" class="search-switch" style="margin-left: 10px;"><img src="resources/img/icon/search.png" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
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

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/member.css"/>
		<div class="inr">
			<!-- visual -->
			<div class="area_subVisual">
				<!-- visual-->
				<div class="subg v6"></div>
				<!-- location -->
				<!-- title + location -->
				<div class="inner">
					<div class="visual_title">
						<div class="box_title">
							<h2 class="sub_tit iropke">아이디/비밀번호 찾기</h2>
							<p>아이디/비밀번호 찾기</p>
						</div>
					</div>
				</div>
			</div>
			
			<!-- lnb -->
			<div class="area_lnb_wrap">
				<div class="area_lnb">
					<div class="inner">
						<nav class="lnb lnb_scroll v3">
							<ul>
								<li><a href="login"><span>로그인</span></a></li>
								<li><a href="find" class="on"><span>아이디/비밀번호 찾기</span></a></li>
								<li><a href="register"><span>회원가입</span></a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>		<section id="container">

		<!-- 본문 -->
		<div id="content">
			<div class="inr02">
			<!-- S : 내용 -->
				<h3>아이디/비밀번호 찾기</h3>

				<div class="find_container">
					<h1>Search</h1>
					<p class="tips">가입시 입력하신 정보를 정확하게 입력해주세요.</p>
					<div class="col-md-6">
						<h2>아이디찾기</h2>
						<ul class="input_txt">
							<li><input type="text" name="sid_name" id="sid_name" class="input_txt" placeholder="이름을 입력해주세요."></li>
							<li><input type="text" name="sid_email" id="sid_email" class="input_txt" placeholder="이메일을 입력해주세요."></li>
						</ul>
						<input type="button" class="btn-sumit" value="아이디찾기" onClick="sid_go();">
					</div>
					<div class="col-md-6">
						<h2>비밀번호 찾기</h2>
						<!--ul class="find_radio">
							<li><input type="radio" name="" id="" checked="checked"> 이메일로 찾기</li>
							<li><input type="radio" name="" id=""> 휴대폰으로 찾기</li>
						</ul-->
						<ul class="input_txt">
							<li><input type="text" name="spw_id" id="spw_id" class="input_txt" placeholder="아이디를 입력해주세요."></li>
							<li><input type="text" name="spw_name" id="spw_name" class="input_txt" placeholder="이름을 입력해주세요."></li>
							<li><input type="text" name="spw_email" id="spw_email" class="input_txt" placeholder="이메일을 입력해주세요."></li>
							<li><input type="text" name="spw_cell" id="spw_cell" class="input_txt" placeholder="휴대폰번호를 입력해주세요."></li>
							<li>※ 새로운 비밀번호를 만들어서 등록된 메일주소로 보내드립니다.</li>
						</ul>
						<input type="button" class="btn-sumit" value="비밀번호찾기" onClick="spw_go();">
					</div>
				</div>

			<!-- E : 내용 -->
			</div>
		</div>
		<!-- //본문 -->
		</section>

		<div id="afscript"></div>
	<script>
	function sid_go() {
	  
	  var sidname = $("#sid_name").val();
	  var sidmail = $("#sid_email").val();
	  
	  if(!sidname) { 
		alert('성명을 입력해주세요.');
		$("#sid_name").focus();
		return false;
	  }
	  if(!sidmail) { 
		alert('메일주소를 입력해주세요.');
		$("#sid_email").focus();
		return false;
	  }
	  $.ajax({
		type: "POST",
		url: "./load/sch_id.php",
		data: "sidname="+sidname+"&sidmail="+sidmail,
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		async:  false,
		success: function(result) {
			$("#afscript").html(result);
			//$("#sid_name").focus();
		}
	  });
	}
	function spw_go() {
	  
	  var spwid = $("#spw_id").val();
	  var spwname = $("#spw_name").val();
	  var spwmail = $("#spw_email").val();
	  var spwcell = $("#spw_cell").val();
	  
	  if(!spwid) { 
		alert('아이디를 입력해주세요.');
		$("#spw_id").focus();
		return false;
	  }
	  if(!spwname) { 
		alert('성명을 입력해주세요.');
		$("#spw_name").focus();
		return false;
	  }
	  if(!spwmail) { 
		alert('메일주소를 입력해주세요.');
		$("#spw_email").focus();
		return false;
	  }
	  if(!spwcell) { 
		alert('휴대폰번호를 입력해주세요.');
		$("#spw_cell").focus();
		return false;
	  }
	  $.ajax({
		type: "POST",
		url: "./load/sch_pw.php",
		data: "spwid="+spwid+"&spwname="+spwname+"&spwmail="+spwmail+"&spwcell="+spwcell,
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		async:  false,
		success: function(result) {
			$("#afscript").html(result);
			//$("#sid_name").focus();
		}
	  });
	}
	function popupmsg(a, b, c, d) {
		$('#modalTitle').html(a);
        $('#modalBody').html(b);
		//$('#eventUrl').attr('href', c);
		$('#popmsg').modal();
	}
	</script>

	<div id="popmsg" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<!--button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button-->
					<h4 id="modalTitle" class="modal-title">제목없음</h4>
				</div>
				<div id="modalBody" class="modal-body" style="font-size:18px;">내용없음</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button id="btn1" class="btn btn-primary" style="display:none;"><a href="login" style="color:white;">로그인하기</a></button>
				</div>
			</div>
		</div>
	</div>

	<!-- ======== @Region: #footer ======== -->
	
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
		
	<script>
	function go_url(a) {
	  location.href = a;
	}
	</script>

  </div>
  
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
    <!-- <script src="js/jquery-3.3.1.min.js"></script> -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.barfiller.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.min.js"></script>
    <!-- <script src="js/main.js"></script> -->
</body>

<!-- Mirrored from www.geojeyouth.com/web/find by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Nov 2020 15:22:40 GMT -->
</html>
