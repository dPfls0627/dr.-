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
    <title>MemberMyPage</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">




  <script>
    function updatePop(){
      window.open("memberupdate.html", "a", "width=700, height=800, left=100, top=50"); 
    }
  </script>
  
  <link rel="stylesheet" type="text/css" href="./board/css/base.css"/>

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
                        <li><a href="./index.html">홈</a></li>
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

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2>Mypage</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="#" onclick="updatePop()" style="color: rgba(99, 98, 96, 0.692);"><img src="img/account_edit_icon_135995.png" width="30">내 정보 수정</a>
                        <span>Mypage</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <div class="product__details__tab">
      <div class="col-lg-12">
          <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item">
                  <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">Comment</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">Like</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">Reserve</a>
              </li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                <div class="row d-flex justify-content-center">
                  <div class="">
                    <p><input type="checkbox">상담 게시판에 댓글이 달렸습니다.</p>
                    <div style="text-align: center;"><button id="deletebtn" style="width: 100px;">알림삭제</button></div> 
                    </div>
                </div>
            </div>
              <div class="tab-pane" id="tabs-2" role="tabpanel">
                  <div class="row d-flex justify-content-center">
                      <div class="col-lg-8">
                          <p>This delectable Strawberry Pie is an extraordinary treat filled with sweet and
                              tasty chunks of delicious strawberries. Made with the freshest ingredients, one
                              bite will send you to summertime. Each gift arrives in an elegant gift box and
                              arrives with a greeting card of your choice that you can personalize online!2
                          </p>
                      </div>
                  </div>
              </div>
              <div class="tab-pane" id="tabs-3" role="tabpanel">
                  <div class="row d-flex justify-content-center">
                      <div class="col-lg-8">
                          <p>This delectable Strawberry Pie is an extraordinary treat filled with sweet and
                              tasty chunks of delicious strawberries. Made with the freshest ingredients, one
                              bite will send you to summertime. Each gift arrives in an elegant gift box and
                              arrives with a greeting card of your choice that you can personalize online!3
                          </p>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>

<!-- Testimonial Section Begin -->
  <section class="testimonial spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <span>RESERVED LIST</span>
                </div>
            </div>
        </div>
        <div class="blog__details__comment">
          <h5>01 Reserved List</h5>
          <h5>02 Reserved List</h5>
          <h5>03 Reserved List</h5>
          <h5>04 Reserved List</h5>
       </div>
    </div>
</section>
<!-- Testimonial Section End -->

  <!-- Testimonial Section Begin -->
  <section class="testimonial spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <span>COMMUNITY BOARD LIST</span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="testimonial__slider owl-carousel">
                <div class="col-lg-6">
                  <div class="team__item set-bg" data-setbg="img/동물1.jpg">
                    <div class="team__item__text">
                        <h6>Randy Butler</h6>
                        <span>Decorater</span>
                        <div class="team__item__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                </div>
                <div class="col-lg-6">
                  <div class="team__item set-bg" data-setbg="img/동물2.jpg">
                    <div class="team__item__text">
                        <h6>Randy Butler</h6>
                        <span>Decorater</span>
                        <div class="team__item__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                </div>
                <div class="col-lg-6">
                  <div class="team__item set-bg" data-setbg="img/동물3.jpg">
                    <div class="team__item__text">
                        <h6>Randy Butler</h6>
                        <span>Decorater</span>
                        <div class="team__item__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                </div>
                <div class="col-lg-6">
                  <div class="team__item set-bg" data-setbg="img/동물4.jpg">
                    <div class="team__item__text">
                        <h6>Randy Butler</h6>
                        <span>Decorater</span>
                        <div class="team__item__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                </div>
                <div class="col-lg-6">
                  <div class="team__item set-bg" data-setbg="img/동물5.jpg">
                    <div class="team__item__text">
                        <h6>Randy Butler</h6>
                        <span>Decorater</span>
                        <div class="team__item__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                </div>
                <div class="col-lg-6">
                  <div class="team__item set-bg" data-setbg="img/동물6.jpg">
                    <div class="team__item__text">
                        <h6>Randy Butler</h6>
                        <span>Decorater</span>
                        <div class="team__item__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Testimonial Section End -->

<!-- Testimonial Section Begin -->
  <section class="testimonial spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <span>QUESTION BOARD LIST</span>
                </div>
            </div>
        </div>
        <div class="blog__details__comment">
          <h5>01 Board List</h5>
          <h5>02 Board List</h5>
          <h5>03 Board List</h5>
          <h5>04 Board List</h5>
          <h5>01 Board List</h5>
          <h5>02 Board List</h5>
          <h5>03 Board List</h5>
          <h5>04 Board List</h5>
       </div>
    </div>
</section>
<!-- Testimonial Section End -->

<!-- Shop Login Begin -->
<section class="class-page spad">
  <div class="container">
      <div class="row">
          <div class="col-lg-4">
              <div class="class__sidebar">
                  <h5>Product registration</h5>
                  <form action="#" method="POST" enctype="multipart/form-data">
                      <input type="text" name ="pname" placeholder="업체 이름">
                      <select name="ptype" id="ptype">
                        <option value="">병원</option>
                        <option value="">호텔</option>
                        <option value="">미용</option>
                        <option value="">그루밍</option>
                      </select>
                      <input type="text" name="pdescrption" placeholder="업체 설명">
                      <input id="pfile" type="file" name="pimg">
                      <button type="submit" class="site-btn">Complete</button>
                  </form>
              </div>
          </div>
      </div>
  </div>
</section>
<!--Shop Login End-->

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
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.barfiller.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>