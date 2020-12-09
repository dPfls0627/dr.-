<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="UTF-8">

<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
	<meta charset="UTF-8">
		<title>Dr.멍이냥</title>
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
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/se2/dist/js/HuskyEZCreator.js" charset="utf-8"></script>
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
                               <li class="active"><a href="ntboardlist">커뮤니티</a>
                            <ul class="dropdown">
                                <li><a href="ntboardlist">공지사항</a></li>
                                <li><a href="freeboardlist">자유게시판</a></li>
                                <li><a href="ptboardlist">사진갤러리</a></li>
                                <li><a href="dtboardlist">상담게시판</a></li>
                                <li><a href="vodboardlist">강의 동영상</a></li>
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


                    <!-- 본문 -->
                    <div id="content">
                        <div class="inr02">
            
                            <!--main content-->
                            <div class="col-md-10 col-md-push-2">
                                <div class="block" style="padding-top:5px;">
                                    <div class="row" style="min-height:500px;">
                                        <!-- 게시판 -->
                                        <div class="bbs-view m_noview">
                                      
                                            <form name="myForm" id="myForm" method="post" action="dtboardwrite" enctype="multipart/form-data" class="form-inline">
                                                  <table>
                                                    <colgroup>
                                                    <col width="30">
                                                    <col width="150">
                                                    <col>
                                                    <col width="30">
                                                    <col width="150">
                                                    <col>
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <td class="bbs-list-blank" style="width:30px;"></td>
                                                        <td class="bbs-list-a" style="width:150px;">제 &nbsp; &nbsp; 목</td>
                                                        <td class="bbs-list-b" colspan="4"><input type="text" name="dtbtitle" value="" placeholder="제목 입력란" class="form-control"></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="bbs-list-blank"></td>
                                                        <td class="bbs-list-a">성 &nbsp; &nbsp; 명</td>
                                                        <td class="bbs-list-b"><input type="text" name="dtbwriter" placeholder="성 명" class="form-control" value="${sessionScope.loginId}" readonly=""></td>
                                                        <td class="bbs-list-blank"></td>
                                                        <td class="bbs-list-a">게시판</td>
                                                        <td class="bbs-list-b"><input type="text" class="form-control" value="상담게시판" readonly=""></td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td class="bbs-list-blank"></td>
                                                        <td class="bbs-list-a">본 문</td>
                                                        <td class="bbs-list-b" colspan="4">
                                                            <textarea id="dtbcontents" name="dtbcontents" style="width: 100%; height: 325px; display: none;"></textarea>
                                                                <!--<iframe frameborder="0" scrolling="no" style="width: 100%; height: 374px;" src="/lib/se2/dist/SmartEditor2Skin.html"></iframe> -->
                                                        </td>
                                                    </tr>
                                                    
                                                </tbody>
                                            
                                            </table>
            									</form>
                                            <div style="height:20px;clear:both;"></div>
                                            <div style="width:100%;text-align:right;padding-right:30px;"><button type="button" class="btn btn-warning" onclick="go_url('dtboardlist');">작성취소</button> <button type="button" class="btn btn-info" onclick="go_submits();">작성완료</button></div>
                                        </div>
                                        
            
                                        <div class="bbs-view m_view">
                                           
                                            
                                            <form name="myForm2" id="myForm2" method="post" action="dtboardwrite" enctype="multipart/form-data" class="form-inline">
                                             <table>
                                                <colgroup>
                                                    <col width="30">
                                                    <col width="150">
                                                    <col>
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <td class="bbs-list-blank" style="width:30px;"></td>
                                                        <td class="bbs-list-a" style="width:150px;">제 &nbsp; &nbsp; 목</td>
                                                        <td class="bbs-list-b"><input type="text" name="dtbtitle" value="" placeholder="제 목" class="form-control"></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="bbs-list-blank"></td>
                                                        <td class="bbs-list-a">성 &nbsp; &nbsp; 명</td>
                                                        <td class="bbs-list-b"><input type="text" name="dtbwriter" placeholder="성 명" class="form-control" value="${sessionScope.loginId}" readonly=""></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="bbs-list-blank"></td>
                                                        <td class="bbs-list-a">게시판</td>
                                                        <td class="bbs-list-b"><input type="text" class="form-control" value="상담게시판" style="width:100%;" readonly=""></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="bbs-list-b" colspan="3">
                                                            <textarea name="dtbcontents" style="width:100%;height:150px;"></textarea>
                                                        </td>
                                                    </tr>
                                                    
                                                </tbody>
                                            
                                            </table>
          								  </form>
                                            <div style="height:20px;clear:both;"></div>
            
                                            <div style="width:100%;text-align:right;padding-right:30px;"><button type="button" class="btn btn-warning" onclick="go_url('dtboardlist');">작성취소</button> <button type="button" class="btn btn-info" onclick="go_submit2();">작성완료</button></div>
            
                                        </div>
                                        <!-- 게시판 -->
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <!-- //본문 -->
                    </section>
                <script>
                function go_submits() {
                    
                    oEditors.getById["dtbcontents"].exec("UPDATE_CONTENTS_FIELD", []);
            
                    var frm = document.myForm;
            
                    if (!frm.dtbtitle.value) {
                        alert("제목을 입력해주세요!");
                        frm.subject.focus();
                        return false;
                    }
            
                    $("#myForm").submit();
                }
                function go_submit2() {
                    var frm = document.myForm;
            
                    if (!frm.subject.value) {
                        alert("제목을 입력해주세요!");
                        frm.subject.focus();
                        return false;
                    }
            
                    $("#myForm2").submit();;
                }
                var oEditors = [];
                var sLang = "ko_KR";	// 언어 (ko_KR/ en_US/ ja_JP/ zh_CN/ zh_TW), default = ko_KR
                // 추가 글꼴 목록
                //var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
                nhn.husky.EZCreator.createInIFrame({
                    oAppRef: oEditors,
                    elPlaceHolder: "dtcontents",
                    sSkinURI: "${pageContext.request.contextPath}/resources/lib/se2/dist/SmartEditor2Skin.html",	
                    htParams : {
                        bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
                        bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
                        bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
                        //bSkipXssFilter : true,		// client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
                        //aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
                        fOnBeforeUnload : function(){
                            //alert("완료!");
                        },
                        I18N_LOCALE : sLang
                    }, //boolean
                    fOnAppLoad : function(){
                        //예제 코드
                        //oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
                    },
                    fCreator: "createSEditor2"
                });
                function go_url(i) {
                    location.href = i;
                }
                </script>
            
            
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
            <script src="${pageContext.request.contextPath}/resources/js/jquery.barfiller.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
            
            <script>
                function go_url(a) {
                  location.href = a;
                }
                </script>
            
                </div>
            </body>
            
            <!-- Mirrored from www.geojeyouth.com/web/bbs_list?bbs=gongji by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Nov 2020 15:12:42 GMT -->
            </html>
            