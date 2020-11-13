<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="UTF-8">

<!-- Mirrored from www.geojeyouth.com/web/login by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Nov 2020 15:12:55 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
	<meta charset="utf-8">
		<title>로그인 | 거제청년센터 이룸 공식사이트</title>
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
	 <link rel="stylesheet" href="css/flaticon.css" type="text/css">
	 <link rel="stylesheet" href="css/barfiller.css" type="text/css">
	 <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
	 <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
	 <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
	 <link rel="stylesheet" href="css/nice-select.css" type="text/css">
	 <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
	 <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
	 <link rel="stylesheet" href="css/style.css" type="text/css">

     	 
     <link href="./board/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
     <link href="./board/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="./board/css/base.css"/>
     <link rel="stylesheet" type="text/css" href="./board/js/jquery-ui.css"/>
     <link rel="stylesheet" type="text/css" href="./board/css/layout.css"/>
     
     <link rel="stylesheet" type="text/css" href="./board/css/content.css"/>
     <link rel="stylesheet" type="text/css" href="./board/css/utobiz.css"/>
     <link rel="stylesheet" type="text/css" href="./board/css/bbs.css"/>
     
     <script type="text/javascript" src="./board/js/jquery-1.12.2.min.js"></script>
     <script type="text/javascript" src="./board/js/jquery.bxslider.js"></script>
     <script type="text/javascript" src="./board/js/jquery-ui.js"></script>
     <script type="text/javascript" src="./board/js/custom.js"></script>
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



<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__cart">
      <div class="offcanvas__cart__item">
          <a href="./mypage.html" style="color: black;"><img src="" alt="">마이페이지</a>
      </div>
        <div class="offcanvas__cart__links">
            <a href="#"><img src="img/icon/heart.png" alt=""></a>
            <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
        </div>
    </div>
    <div class="offcanvas__logo">
        <a href="./index.html"><img src="img/멍이냥 로고2.png" width="150px" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__option">
        <ul>
          <li><a href="./register.html">회원가입</a></li>
          <li><a href="./login.html">로그인</a></li>
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
                              <li><a href="./register.html">회원가입</a></li>
                              <li><a href="./login.html">로그인</a></li>
                          </ul>
                      </div>
                        <div class="header__logo">
                            <a href="./index.html"><img src="img/멍이냥 로고2.png" width="200px" alt=""></a>
                        </div>
                        <div class="header__top__right" style=" margin-top:-17px;">
                          <div class="header__top__right__cart" >
                              <a href="./mypage.html" style="color: black;"><img src="" alt="">마이페이지</a>
                          </div>
                            <div class="header__top__right__links">
                              <div class="arlam" style="font-size: 3px; background-color: rgb(255, 145, 0); width: 15px; height: 15px; color: white;">10</div>
                              <img src="img/hero/icon.jpg" style="width: 40%;" alt="none"/>
                              <a href="#" class="search-switch" style="margin-left: 10px;"><img src="img/icon/search.png" alt=""></a>
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
                        <li><a href="cafe-main/index.html">홈</a></li>
                        <li><a href="./Dr.멍이냥.html">소개</a></li>
                        <li><a href="./hospital.html">병원</a>
                        <li><a href="./shop.html">스토어</a>
                        <ul class="dropdown">
                            <li><a href="shop.html?type=G">그루밍</a></li>
                            <li><a href="shop.html?type=H">호텔</a></li>
                            <li><a href="shop.html?type=C">카페</a></li>
                            <li><a href="shop.html?type=K">유치원</a></li>
                            <li><a href="shop.html?type=C">문화공간</a></li>
                        </ul>
                        </li>
                        <li><a href="./공지사항.html">커뮤니티</a>
                            <ul class="dropdown">
                                <li><a href="공지사항.html?type=news">공지사항</a></li>
                                <li><a href="자유게시판.html?type=free">자유게시판</a></li>
                                <li><a href="사진갤러리.html?type=Photo">사진갤러리</a></li>
                                <li><a href="상담게시판.html?type=question">상담게시판</a></li>
                                <li><a href="강의동영상.html?type=vod">강의 동영상</a></li>
                            </ul>
                        </li>
                        <li><a href="./contact.html">문의</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Header Section End -->

		<link rel="stylesheet" type="text/css" href="css/member.css"/>
		<div class="inr">
			<!-- visual -->
			이미지 넣을 곳!
				<!-- visual-->
				<div class="subg v6"></div>
				<!-- location -->
				<!-- title + location -->
				<div class="inner">
					<div class="visual_title"></div>
						<div class="box_title">
							<h2 class="sub_tit iropke">회원 로그인</h2>
							<p>로그인</p>
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
								<li><a href="login.html" class="on"><span>로그인</span></a></li>
								<li><a href="find.html"><span>아이디/비밀번호 찾기</span></a></li>
								<li><a href="register.html"><span>회원가입</span></a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<section id="container">

		<!-- 본문 -->
		<div id="content">
			<div class="inr02">
			<!-- S : 내용 -->

				<h3>로그인</h3>

				<form name="myForm" id="myForm" action="http://www.geojeyouth.com/web/cfg/login" method="post" autocomplete="off" onSubmit="return sendit()">
				<input type="hidden" name="turl" value=>
				<div class="login_container">
					<h1>Login</h1>
					<div class="login_top">
						<ul>
							<li><input type="text" name="uids" id="uids" class="input_txt" placeholder="아이디를 입력해주세요."></li>
							<li><input type="password" name="upws" id="upws" class="input_txt" placeholder="비밀번호를 입력해주세요."></li>
						</ul>
						<input type="submit" class="btn-sumit" value="로그인">
					
					</div>

					<div class="login_bottom">
						<ul>
							<li>카카오 |</li>
							<li>네이버 |</li>
							<li>페이스북 |</li>
							<li>구글|</li>
						</ul>
					</div>

				</div>
				</form>



			<!-- E : 내용 -->
			</div>
		</div>
		<!-- //본문 -->
		</section>

	<script>
    window.onload = function() {
 
        if (getCookie("uid")) { // getCookie함수로 id라는 이름의 쿠키를 불러와서 있을경우
            document.myForm.uids.value = getCookie("uid"); //input 이름이 id인곳에 getCookie("id")값을 넣어줌
            document.myForm.uidsave.checked = true; // 체크는 체크됨으로
        }
		if($("#uids").val()) {
			$("#upws").focus();
		} else {
			$("#uids").focus();
		}
 
    }
 
    function setCookie(name, value, expiredays) //쿠키 저장함수
    {
        var todayDate = new Date();
        todayDate.setDate(todayDate.getDate() + expiredays);
        document.cookie = name + "=" + escape(value) + "; path=/; expires="
                + todayDate.toGMTString() + ";"
    }
 
    function getCookie(Name) { // 쿠키 불러오는 함수
        var search = Name + "=";
        if (document.cookie.length > 0) { // if there are any cookies
            offset = document.cookie.indexOf(search);
            if (offset != -1) { // if cookie exists
                offset += search.length; // set index of beginning of value
                end = document.cookie.indexOf(";", offset); // set index of end of cookie value
                if (end == -1)
                    end = document.cookie.length;
                return unescape(document.cookie.substring(offset, end));
            }
        }
    }
 
    function sendit() {
        var frm = document.myForm;
        if (!frm.uids.value) { //아이디를 입력하지 않으면.
            alert("아이디를 입력 해주세요!");
            frm.uids.focus();
            return false;
        }
        if (!frm.upws.value) { //패스워드를 입력하지 않으면.
            alert("패스워드를 입력 해주세요!");
            frm.upws.focus();
            return false;
        }
 
        if (document.myForm.uidsave.checked == true) { // 아이디 저장을 체크 하였을때
            setCookie("uid", document.myForm.uids.value, 7); //쿠키이름을 id로 아이디입력필드값을 7일동안 저장
        } else { // 아이디 저장을 체크 하지 않았을때
            setCookie("uid", document.myForm.uids.value, 0); //날짜를 0으로 저장하여 쿠키삭제
        }
 
        document.myForm.submit(); //유효성 검사가 통과되면 서버로 전송.
 
    }
	</script>

	<!-- ======== @Region: #footer ======== -->
	
<!-- Footer Section Begin -->
<footer class="footer set-bg" data-setbg="img/footer.jpg" style="background-color:#f08632;">
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
            <a href="#"><img src="img/멍이냥 로고2.png" alt=""
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
<!-- <script src="js/jquery-3.3.1.min.js"></script> -->
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.barfiller.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<!-- <script src="js/main.js"></script> -->
</body>
</html>
