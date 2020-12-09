<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="UTF-8">

<head>
<meta charset="UTF-8">
<meta name="description" content="Cake Template">
<meta name="keywords" content="Cake, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="HandheldFriendly" content="true" />
<meta name="format-detection" content="telephone=no" />

<title>Cake | Template</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticonpet.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/barfiller.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/base.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/js/jquery-ui.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/layout_new.css" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main_new.css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/board/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/board/js/jquery.bxslider.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/board/js/jquery-ui.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/board/js/custom.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-179037619-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-179037619-1');
</script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/board/css/base.css" />

<!--Start of Tawk.to Script-->
<script type="text/javascript">
	var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
	(function() {
		var s1 = document.createElement("script"), s0 = document
				.getElementsByTagName("script")[0];
		s1.async = true;
		s1.src = 'https://embed.tawk.to/5fb72604a1d54c18d8eb7794/default';
		s1.charset = 'UTF-8';
		s1.setAttribute('crossorigin', '*');
		s0.parentNode.insertBefore(s1, s0);
	})();
</script>
<!--End of Tawk.to Script-->
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
					<div class="arlam"
						style="font-size: 3px; background-color: rgb(255, 145, 0); width: 15px; height: 15px; color: white;">10</div>
					<img src="resources/img/hero/icon.jpg" style="width: 40%;"
						alt="none" />
				</c:if>
				<a href="#" class="search-switch" style="margin-left: 10px;"><img
					src="resources/img/icon/search.png" alt=""></a>
			</div>
		</div>
		<div class="offcanvas__logo">
			<a href="/"><img src="resources/img/멍이냥 로고2.png"
				width="150px" alt=""></a>
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
								<a href="/"><img src="resources/img/멍이냥 로고2.png"
									width="200px" alt=""></a>
							</div>
							<div class="header__top__right" style="margin-top: -17px;">
								<div class="header__top__right__cart">
									<c:choose>
										<c:when test="${empty sessionScope.loginId}">
										</c:when>
										<c:when test="${sessionScope.loginId eq 'admin'}">
											<a href="adminpage" style="color: black;"><img src=""
												alt="">관리자페이지</a>
										</c:when>
										<c:otherwise>
											<a href="mypage" style="color: black;"><img src="" alt="">마이페이지</a>
										</c:otherwise>
									</c:choose>

								</div>
								<div class="header__top__right__links">
									<c:if test="${!empty sessionScope.loginId}">
										<div class="arlam"
											style="font-size: 3px; background-color: rgb(255, 145, 0); width: 15px; height: 15px; color: white;">10</div>
										<img src="resources/img/hero/icon.jpg" style="width: 40%;"
											alt="none" />
									</c:if>
									<a href="#" class="search-switch" style="margin-left: 10px;"><img
										src="resources/img/icon/search.png" alt=""></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="canvas__open">
					<i class="fa fa-bars"></i>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<nav class="header__menu mobile-menu">
						<ul>
							<li class="active"><a href="/">홈</a></li>
							<li><a href="멍이냥">소개</a></li>
							<li><a href="hospital">병원</a>
							<li><a href="shop">스토어</a>
								<ul class="dropdown">
									<li><a href="shop?type=G">그루밍</a></li>
									<li><a href="shop?type=H">호텔</a></li>
									<li><a href="shop?type=C">카페</a></li>
									<li><a href="shop?type=K">유치원</a></li>
									<li><a href="shop?type=C">문화공간</a></li>
								</ul></li>
							<li><a href="공지사항">커뮤니티</a>
								<ul class="dropdown">
									<li><a href="공지사항?type=news">공지사항</a></li>
									<li><a href="자유게시판?type=free">자유게시판</a></li>
									<li><a href="사진갤러리?type=Photo">사진갤러리</a></li>
									<li><a href="상담게시판?type=question">상담게시판</a></li>
									<li><a href="강의동영상?type=vod">강의동영상</a></li>
								</ul></li>
							<li><a href="contact">문의</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero">
		<div class="hero__slider owl-carousel">
			<div class="hero__item set-bs"
				data-setbg="resources/img/hero/바탕로고.jpg">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-8">
							<div class="hero__text">
								<h2 style="font-size: 35px;">Dr.멍이냥에서 선사하는 편안한 서비스!</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="hero__item set-bs2"
				data-setbg="resources/img/hero/바탕_로고1.jpg">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-8">
							<div class="hero__text">
								<h2 style="font-size: 35px;">반려동물과 함께 하는 모든 경험!</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- About Section Begin -->

	<!-- Categories Section Begin -->
	<div class="categories">
		<div class="container">
			<div class="row">
				<div class="categories__slider owl-carousel">
				<c:forEach var="hashtag" items="${hashtagList}" varStatus="status">
					<div class="categories__item">
						<div class="categories__item__icon">
						<a href="hashtagwrite?tagid=${hashtag.tagid}">
							<span class="flaticon-009-pets"></span></a>
							<h5># ${hashtag.tname}</h5>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!-- Categories Section End -->

	<!-- Team Section Begin -->
	<section class="team spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 col-md-7 col-sm-7">
					<div class="section-title">
						<span>Our Service</span>
						<h2>The Best Service</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="team__item set-bg"
						data-setbg="resources/img/team/병원.jpg">
						<div class="team__item__text">
							<h6>Hospital</h6>
							<span>동물병원</span>
							<div class="team__item__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="team__item set-bg"
						data-setbg="resources/img/team/그루밍.jpg">
						<div class="team__item__text">
							<h6>Shop</h6>
							<span>뷰티</span>
							<div class="team__item__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="team__item set-bg"
						data-setbg="resources/img/team/호텔2.jpg">
						<div class="team__item__text">
							<h6>Hotel</h6>
							<span>데이케어</span>
							<div class="team__item__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="team__item set-bg"
						data-setbg="resources/img/team/호텔.jpg">
						<div class="team__item__text">
							<h6>Hotel</h6>
							<span>호텔</span>
							<div class="team__item__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="team__item set-bg"
						data-setbg="resources/img/team/유치원.jpg">
						<div class="team__item__text">
							<h6>Kindergarten</h6>
							<span>유치원</span>
							<div class="team__item__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="team__item set-bg"
						data-setbg="resources/img/team/카페.jpg">
						<div class="team__item__text">
							<h6>Animal Cafe</h6>
							<span>반려동물 카페</span>
							<div class="team__item__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="team__item set-bg"
						data-setbg="resources/img/team/애견유치원.jpg">
						<div class="team__item__text">
							<h6>Cultural space</h6>
							<span>문화 공간</span>
							<div class="team__item__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="team__item set-bg"
						data-setbg="resources/img/team/그루밍2.jpg">
						<div class="team__item__text">
							<h6>Hotel</h6>
							<span>그루밍</span>
							<div class="team__item__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Team Section End -->

	<!-- 하단영역 -->
	<div class="area_bottom">

		<!-- 1400px wrap -->
		<div class="inr03">
			<!-- 갤러리 -->
			<div class="area_photo">

				<ul class="photoList">
					<c:forEach var="boardView" items="${boardView}" begin="0" end="2">
						<li><a href="ptboardview?bnumber=${boardView.ptbnumber}">
								<span class="img">${boardView.ptbcontents}</span>
								 <em><b>${boardView.ptbtitle}</b></em>
								<span class="date">${boardView.ptbdate}</span>
								<span class="date">좋아요 ${boardView.ptlike}개</span>
						</a></li>
					</c:forEach>
				</ul>


			</div>

			<!--동영상 -->
			<div class="area_video">

				<div class="video_box">
					<iframe id="videoPlayer" width="400" height="330"
						src="https://www.youtube.com/embed/BFzByqkUh7A" frameborder="0"
						allow="autoplay; encrypted-media" allowfullscreen=""></iframe>
				</div>

			</div>
		</div>
		<!-- //1400px wrap -->

	</div>
	<!-- //하단영역 -->




	<!-- Instagram Section Begin -->
	<section class="instagram spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 p-0">
					<div class="instagram__text">
						<div class="section-title">
							<span>Follow us on instagram</span>
							<h2>Always remember to have fun with your pets</h2>
						</div>
						<h5>
							<i class="fa fa-instagram"></i> @dr_dog&cats
						</h5>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-4 col-6">
							<div class="instagram__pic">
								<img src="resources/img/instagram/cat1.jpg" alt="">
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-6">
							<div class="instagram__pic middle__pic">
								<img src="resources/img/instagram/dog2.png" alt="">
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-6">
							<div class="instagram__pic">
								<img src="resources/img/instagram/cat2.png" alt="">
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-6">
							<div class="instagram__pic">
								<img src="resources/img/instagram/catanddog.jpg" alt="">
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-6">
							<div class="instagram__pic middle__pic">
								<img src="resources/img/instagram/dog1.jpeg" alt="">
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-6">
							<div class="instagram__pic">
								<img src="resources/img/instagram/dogandcat.jpg" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Instagram Section End -->


	<!-- Map Begin -->
	<div class="map">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-7">
					<div class="map__inner">
						<h6>인천광역시</h6>
						<ul>
							<li>미추홀구 매소홀로488번길</li>
							<li>2man2woman@support.com</li>
							<li>010-2268-1425</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="map__iframe">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3167.9294582440757!2d126.67389731559278!3d37.43877117982206!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b7998c31f88b1%3A0x8131d6a222aefc44!2z7J247LKc6rSR7Jet7IucIOuCqOq1rCDtlZnsnbUy64-ZIOunpOyGjO2ZgOuhnDQ4OOuyiOq4uA!5e0!3m2!1sko!2skr!4v1604641724427!5m2!1sko!2skr"
				height="300px"></iframe>
		</div>
	</div>
	<!-- Map End -->

	<!-- Footer Section Begin -->
	<footer class="footer set-bg" data-setbg="resources/img/footer.jpg"
		style="background-color: #f08632;">
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
							<a href="#"><img src="resources/img/멍이냥 로고2.png" alt=""></a>
						</div>
						<p style="color: white;">펫오너에게는 가장 빠르게 펫병원 선택과 예약이 가능한 서비스를
							펫병원에게는 펫병원의 매출증대를 위한 최상의 마케팅 서비스를 제공하겠습니다.</p>
						<div class="footer__social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-youtube-play"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="footer__newslatter">
						<h6>알림서비스</h6>
						<p style="color: white;">최신 업데이트 및 혜택을 받으세요.</p>
						<form action="#">
							<input type="text" placeholder="Email">
							<button type="submit">
								<i class="fa fa-send-o"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<p class="copyright__text text-white">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart" aria-hidden="true"></i> by 2남2녀
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
				<input type="textarea" id="search-input"
					placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->

	<!-- Js Plugins -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.barfiller.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>

</html>