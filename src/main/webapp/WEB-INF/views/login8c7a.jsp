<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="UTF-8">

<!-- Mirrored from www.geojeyouth.com/web/login?turl=%2Fweb%2Fjob_2_gujik.geoje by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Nov 2020 15:23:26 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
	<meta charset="UTF-8">
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

<!-- Page Preloder -->
<div id="preloder">                   
	<div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
	<div class="offcanvas__cart">
	  <div class="offcanvas__cart__item">
		  <a href="./mypage.html" style="color: black;"><img src="" alt="">Mypage</a>
	  </div>
		<div class="offcanvas__cart__links">
			<a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
			<a href="#"><img src="img/icon/heart.png" alt=""></a>
		</div>
	</div>
	<div class="offcanvas__logo">
		<a href="./index.html"><img src="img/logo.png" alt=""></a>
	</div>
	<div id="mobile-menu-wrap"></div>
	<div class="offcanvas__option">
		<ul>
			<li><a href="#">Sign in</a> <span class="arrow_carrot-down"></span></li>
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
								<li><a href="#">Sign in</a> <span class="arrow_carrot-down"></span></li>
							</ul>
						</div>
						<div class="header__logo">
							<a href="./index.html"><img src="img/logo.png" alt=""></a>
						</div>
						<div class="header__top__right">
						  <div class="header__top__right__cart">
							  <a href="./mypage.html" style="color: black;"><img src="" alt="">Mypage</a>
						  </div>
							<div class="header__top__right__links">
								<a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
								<a href="#"><img src="img/icon/heart.png" alt=""></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="canvas__open"><i class="fa fa-bars"></i></div>
		</div>
	</div>
	<div class="container"style="z-index: 10;">
		<div class="row">
			<div class="col-lg-12">
				<nav class="header__menu mobile-menu">
					<ul>
						<li class="active"><a href="./index.html">Home</a></li>
						<li><a href="./about.html">Dr.멍이냥</a></li>
						<li><a href="./shop.html">병원</a>
						<li><a href="./shop.html">Shop</a>
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
						<li><a href="./contact.html">Contact</a></li>
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
			<div class="area_subVisual">
				<!-- visual-->
				<div class="subg v6"></div>
				<!-- location -->
				<!-- title + location -->
				<div class="inner">
					<div class="visual_title">
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
				<input type="hidden" name="turl" value=/web/job_2_gujik.geoje>
				<div class="login_container">
					<h1>Login</h1>
					<p class="tips">글작성을 위해서는 로그인이 필요합니다.</p>	
					<div class="login_top">
						<ul>
							<li><input type="text" name="uids" id="uids" class="input_txt" placeholder="아이디를 입력해주세요."></li>
							<li><input type="password" name="upws" id="upws" class="input_txt" placeholder="비밀번호를 입력해주세요."></li>
						</ul>
						<input type="submit" class="btn-sumit" value="로그인">
						<p class="block block-pd-sm m-b-0"><input type="checkbox" class="custom-control-input" name="uidsave" id="uidsave"> 아이디 기억하기</p>
					</div>

					<div class="login_bottom">
						<ul>
							<li><a href="register.html">회원가입</a></li>
							<li><a href="find.html">ID/PW찾기</a></li>
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
	
		<!-- footer -->
		<footer id="footer">
			<div class="footer_top">
				<div class="inr03">
					<ul data-footer="menu">
						<li><a href="info_02.html">개인정보처리방침</a></li>
						<li><a href="info_01.html">이용약관</a></li>
						<li><a href="info_03.html">이메일무단수집거부</a></li>
					</ul>
					<address>
						<div>
							<span>거제청년센터</span>
							<!--span><em>사업자번호</em>612-83-02518</span-->
							<!--span><em>대표</em>변광용</span-->
							<!--span><em>개인정보보호책임자</em>박은혜(irum@geojeyouth.com)</span-->
							<span><em>이용시간</em>평일 9시-21시 (토요일 : 9시-18시) 일요일/공휴일 휴무</span>
							<span><em>주소</em>경남 거제시 계룡로11길 21 1층 거제청년센터 이룸 (지번주소: 경남 거제시 고현동 552)</span>
						</div>
					</address>
					<a class="btn_top" href="#wrap">TOP</a>
				</div>
			</div>
			<div class="footer_bottom">
				<div class="inr03">
					<p>
						Copyright © 거제청년센터이룸. All right reserved.
					</p>
				</div>
			</div>
		</footer>
		<script src="lib/bootstrap/js/bootstrap.min.js"></script>
		<!-- //footer -->
		
	<script>
	function go_url(a) {
	  location.href = a;
	}
	</script>

	</div>
</body>

<!-- Mirrored from www.geojeyouth.com/web/login?turl=%2Fweb%2Fjob_2_gujik.geoje by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Nov 2020 15:23:26 GMT -->
</html>
