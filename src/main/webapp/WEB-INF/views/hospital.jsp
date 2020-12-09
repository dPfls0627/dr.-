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
                           <li class="active"><a href="hospital">병원</a>
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
                        <h2>Hospital</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="index">Home</a>
                        <span>Hospital</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="shop__option">
                <div class="row">
                    <div class="col-lg-7 col-md-7">
                        <div class="shop__option__search">
                            <form action="#" method="POST">
                                <select>
                                    <option value="">선택해주세요</option>
                                    <option value="">호텔</option>
                                    <option value="">미용</option>
                                    <option value="">그루밍</option>
                                </select>
                                <input type="text" placeholder="Search">
                                <button type="submit"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                
                
                <c:forEach var="productList" items="${productList}">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/resources/project_img/${productList.sprofile}">
                            <div class="product__label">
                                <span>${productList.ptype}</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <div class="product__item__price"><h6><a href="#">${productList.pname}</a></h6></div>
                            <div class="cart_add">
                                <a href="productview?productid=${productList.productid}">자세히보기</a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
                
                
        </div>
    </section>
    <!-- Shop Section End -->

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