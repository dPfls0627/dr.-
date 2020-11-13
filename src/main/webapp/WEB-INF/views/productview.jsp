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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
    <title>Cake | Template</title>

    <style>
      .review{
        font-family: 'Noto Sans KR', sans-serif;
      }
    </style>

    <script>
      function reservePop(){
        window.open("reservepop", "a", "width=700, height=800, left=100, top=50"); 
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
          <a href="mypage" style="color: black;"><img src="" alt="">마이페이지</a>
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
          <li><a href="register">회원가입</a></li>
          <li><a href="login">로그인</a></li>
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
                              <li><a href="register">회원가입</a></li>
                              <li><a href="login">로그인</a></li>
                          </ul>
                      </div>
                        <div class="header__logo">
                            <a href="index"><img src="resources/img/멍이냥 로고2.png" width="200px" alt=""></a>
                        </div>
                        <div class="header__top__right" style=" margin-top:-17px;">
                          <div class="header__top__right__cart" >
                              <a href="./mypage.html" style="color: black;"><img src="" alt="">마이페이지</a>
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
                        <li><a href="Dr.멍이냥">소개</a></li>
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
                        <h2>Pet Morning</h2> <!--업체 상호명이 옴-->
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="./index.html">Home</a>
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    
    <div id="product" style="margin-top: 50px; margin-bottom: 50px;">
      <div id="productview" style="text-align: center;">
        <img src="resources/img/캣타워.jpg">
      </div>
      <div id="productbtn" style="text-align: center;">
        <a href="#" onclick="reservePop()" class="primary-btn">예약하기</a>
      </div>
    </div>

       <!-- Contact Section Begin -->
       <section class="contact spad">
        <div class="container">
            <div class="contact__address"></div>
              <div class="contact__text">
                  <h3 style="font-size: 80px;">Customer Review</h3>
              </div>
            <div class="contact__address2"></div>
            <div class="row">
                <div class="col">
                        <div>
                             <h6><strong>아이디 : silverain127</strong></h6>
                             <p>
                              캣타워 정말 너무너무 좋아요!! 완전 잘 쓰고 있고
                              저희 집 고양이가 잘 올라가더라구요!! 튼튼해서 만족스럽습니다!
                              한 두세마리까지는 거뜬하게 케어할 수 있을 것 같아요
                              많이 파세요 사장님^^ 번창하시길...
                            </p>
                        </div>
                        <div class="contact_line"></div>
                </div>
              </div>
              <div class="row">
                <div class="col">
                        <div>
                             <h6><strong>아이디 : silverain127</strong></h6>
                             <p>
                              캣타워 정말 너무너무 좋아요!! 완전 잘 쓰고 있고
                              저희 집 고양이가 잘 올라가더라구요!! 튼튼해서 만족스럽습니다!
                              한 두세마리까지는 거뜬하게 케어할 수 있을 것 같아요
                              많이 파세요 사장님^^ 번창하시길...
                            </p>
                        </div>
                        <div class="contact_line"></div>
                </div>
              </div>
              <div class="row">
                <div class="col">
                        <div>
                             <h6><strong>아이디 : silverain127</strong></h6>
                             <p>
                              캣타워 정말 너무너무 좋아요!! 완전 잘 쓰고 있고
                              저희 집 고양이가 잘 올라가더라구요!! 튼튼해서 만족스럽습니다!
                              한 두세마리까지는 거뜬하게 케어할 수 있을 것 같아요
                              많이 파세요 사장님^^ 번창하시길...
                            </p>
                        </div>
                        <div class="contact_line"></div>
                </div>
              </div>
            </div>
          </section>
                      
          <section class="contact spad" style="margin-top:-150px;">
            <div class="container">
                <div class="row">
                  <div class="col-lg-8">
                    <div class="contact__form">
                      <form action="#" method="POST">
                        <div class="">
                          <div class="col-lg-6">
                              <input type="text" value="silverain127">
                          </div>
                          <div class="col-lg-12">
                            <textarea placeholder="Message"></textarea>
                            <button type="submit" class="site-btn">댓글입력</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>           
            </div>
          </section>


      
    <!-- Contact Section End -->
          
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