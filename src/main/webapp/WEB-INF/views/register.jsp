<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="UTF-8">

<!-- Mirrored from www.geojeyouth.com/web/register by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Nov 2020 15:12:56 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
	<meta charset="UTF-8">
		<title>회원가입 | 거제청년센터 이룸 공식사이트</title>
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
                        <li class="active"><a href="./공지사항.html">커뮤니티</a>
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
		이미지 넣을곳!
				<!-- visual-->
				<div class="subg v6"></div>
				<!-- location -->
				<!-- title + location -->
				<div class="inner">
					<div class="visual_title">
						<div class="box_title">
							<h2 class="sub_tit iropke">회원가입</h2>
							<p>회원가입</p>
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
								<li><a href="login.html"><span>로그인</span></a></li>
								<li><a href="find.html"><span>아이디/비밀번호 찾기</span></a></li>
								<li><a href="register.html" class="on"><span>회원가입</span></a></li>
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
				<h3>회원가입</h3>

				<div class="register_container">
					<ul class="register_step">
						<li class="on"><span class="num">01</span>약관동의</li>
						<li><span class="num">02</span>상세정보 입력</li>
						<li><span class="num">03</span>가입완료</li>
					</ul>

					<h4>이용약관</h4>
					<form name="myForm" id="myForm">
					<div class="agreebox">
						<div class="agree_box">
							<h5 class="text-center m-b-md">제1장 총칙</h5>
							<h6 class="m-b-md">제1조 목적</h6>
							<p class="m-b-md">이 약관은 거제청년센터에서 제공하는 서비스 이용조건 및 절차에 관한 사항과 기타 필요한 사항을 거제청년센터와 이용자의 권리, 의미 및 책임사항 등을 규정함을 목적으로 합니다.</p>
							<h6 class="m-b-md">제2조 약관의 효력과 변경</h6>
							<ol class="m-b-md">
								<li>(1) 이 약관은 이용자에게 공시함으로서 효력이 발생합니다.</li>
								<li>(2) 거제청년센터는 사정 변경의 경우와 영업상 중요사유가 있을 때 약관을 변경할 수 있으며, 변경된 약관은 전항과 같은 방법으로 효력이 발생합니다.</li>
							</ol>
							<h6 class="m-b-md">제3조 약관 외 준칙</h6>
							<p class="m-b-lg">이 약관에 명시되지 않은 사항이 관계법령에 규정되어 있을 경우에는 그 규정에 따릅니다.</p>
							<h5 class="text-center m-b-md">제2장 회원 가입과 서비스 이용</h5>
							<h6 class="m-b-md">제1조 회원의 정의</h6>
							<p class="m-b-md">회원이란 거제청년센터에서 회원으로 적합하다고 인정하는 일반 개인으로 본 약관에 동의하고 서비스의 회원가입 양식을 작성하고 'ID'와 '비밀번호'를 발급받은 사람을 말합니다.</p>
							<h6 class="m-b-md">제2조 서비스 가입의 성립</h6>
							<ol class="m-b-md">
								<li>(1) 서비스 가입은 이용자의 이용신청에 대한 거제청년센터의 이용승낙과 이용자의 약관내용에 대한 동의로 성립됩니다.</li>
								<li>(2) 회원으로 가입하여 서비스를 이용하고자 하는 희망자는 거제청년센터에서 요청하는 개인 신상정보를 제공해야 합니다.</li>
								<li>(3) 이용자의 가입신청에 대하여 거제청년센터에서 승낙한 경우, 거제청년센터는 회원 ID와 기타 거제청년센터에서 필요하다고 인정하는 내용을 이용자에게
									통지합니다.</li>
								<li>(4) 가입할 때 입력한 ID는 변경할 수 없으며, 한 사람에게 오직 한 개의 ID가 발급됩니다.</li>
								<li>(5) 거제청년센터는 다음 각 호에 해당하는 가입신청에 대하여는 승낙하지 않습니다.
									<ul class="register_dot">
										<li>가. 다른 사람의 명의를 사용하여 신청하였을 때</li>
										<li>나. 본인의 실명으로 신청하지 않았을 때</li>
										<li>다. 가입 신청서의 내용을 허위로 기재하였을 때</li>
										<li>라. 사회의 안녕과 질서 혹은 미풍양속을 저해할 목적으로 신청하였을 때</li>
									</ul>
								</li>
							</ol>
							<h6 class="m-b-md">제3조 서비스 이용 및 제한</h6>
							<ol class="m-b-md">
								<li>(1) 서비스 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간을 원칙으로 합니다.</li>
								<li>(2) 전항의 서비스 이용시간은 시스템 정기점검 등 거제청년센터에서 필요한 경우, 회원에게 사전 통지한 후 제한할 수 있습니다.</li>
								<li>(3) 서비스 내용 중 온라인상담은 답변하는 전문의사의 개인사정에 따라 1일 24시간 서비스가 불가능 할 수도 있습니다.</li>
							</ol>
							<h6 class="m-b-md">제4조 서비스의 사용료</h6>
							<ol class="m-b-lg">
								<li>(1) 서비스는 회원으로 등록한 모든 사람들이 무료로 사용할 수 있습니다.</li>
								<li>(2) 거제청년센터에서 서비스를 유료화할 경우 유료화의 시기, 정책, 비용에 대하여 유료화 실시 이전에 서비스에 공시하여야 합니다.</li>
							</ol>
							<h5 class="text-center m-b-md">제3장 서비스 탈퇴 및 이용 제한</h5>
							<h6 class="m-b-md">제1조 서비스 탈퇴 및 재가입</h6>
							<ol class="m-b-md">
								<li>(1) 회원이 서비스의 탈퇴를 원하면 회원탈퇴를 통해 운영자에게 해지 신청을 요청해야 합니다.</li>
								<li>(2) 온라인회원 탈퇴 시 개인정보는 모두 DB에서 즉시 삭제처리되며, 재가입시 이용하시던 아이디는 다시 사용하실 수 없습니다.</li>
								<li>(3) 온라인회원 탈퇴 시 작성하신 작성한 게시물 등은 삭제되지 않으며, 탈퇴처리 후 자동으로 로그아웃 처리되오니 탈퇴하시기 전 작성하신 게시물은 직접 삭제해주시기 바랍니다.</li>
								<li>(3) 온라인회원 탈퇴 후 재가입시 기존의 정보는 복구 불가합니다.</li>
							</ol>
							<h6 class="m-b-md">제3조 서비스 이용제한</h6>
							<p class="m-b-md">거제청년센터는 회원이 다음 사항에 해당하는 행위를 하였을 경우, 사전통지 없이 이용계약을 해지하거나 기간을 정하여 서비스 이용을 중지할 수 있습니다.</p>
							<ul class="register_dot m-b-lg">
								<li>가. 공공 질서 및 미풍 양속에 반하는 경우</li>
								<li>나. 범죄적 행위에 관련되는 경우</li>
								<li>다. 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행할 경우</li>
								<li>라. 타인의 ID 및 비밀번호를 도용한 경우</li>
								<li>마. 타인의 명예를 손상시키거나 불이익을 주는 경우</li>
								<li>바. 같은 사용자가 다른 ID로 이중 등록을 한 경우</li>
								<li>사. 서비스에 위해를 가하는 등 건전한 이용을 저해하는 경우</li>
								<li>아. 기타 관련 법령이나 거제청년센터에서 정한 이용조건에 위배되는 경우</li>
							</ul>
							<h5 class="text-center m-b-md">제4장 서비스에 관한 책임의 제한</h5>
							<h6 class="m-b-md">제1조 온라인상담</h6>
							<ol class="m-b-md">
								<li>(1) 거제청년센터는 서비스의 회원 혹은 사용자들의 상담내용이 상담사와 서비스 관리자를 제외한 제3자에게 유출되지 않도록 최선을 다해 보안을
									유지하려고 노력합니다. 그러나 다음과 같은 경우에는 상담 내용 공개 및 상실에 대하여 거제청년센터의 책임이 없습니다.
									<ul class="register_dot">
										<li>가. 사용자의 부주의로 암호가 유출되어 상담내용이 공개되는 경우</li>
										<li>나. 사용자가 '삭제' 기능을 사용하여 상담을 삭제하였을 경우</li>
										<li>다. 천재지변이나 그 밖의 거제청년센터에서 통제할 수 없는 상황에 의하여 상담내용이 공개되거나 상담내용이 상실되었을 경우</li>
									</ul>
								</li>
								<li>(2) 회원이 신청한 상담에 대한 종합적이고 적절한 답변을 위하여 상담사들은 상담내용과 답변을 참고할 수 있습니다.</li>
								<li>(3) 서비스에서 진행된 상담의 내용은 개인 신상정보를 삭제한 다음 아래와 같은 목적으로 사용할 수 있습니다.
									<ul class="register_dot">
										<li>가. 학술활동</li>
										<li>나. 인쇄물, CD-ROM 등의 저작활동</li>
										<li>다. 커뮤니티 등의 서비스 내용의 일부</li>
									</ul>
								</li>
								<li>(4) 상담에 대한 답변내용은 상담사의 주관적인 답변으로 거제청년센터의 서비스 의견을 대표하지는 않습니다.</li>
								<li>(5) 아래와 같은 상담을 신청하는 경우에는 온라인상담 전체 또는 일부 제공하지 않을 수 있습니다.
									<ul>
										<li>가. 같은 내용의 상담을 반복하여 신청하는 경우</li>
										<li>나. 상식에 어긋나는 표현을 사용하여 상담을 신청하는 경우</li>
									</ul>
								</li>
							</ol>
							
							<h5 class="text-center m-b-md">제5장 의무</h5>
							<h6 class="m-b-md">제1조 회사의 의무</h6>
							<ol class="m-b-md">
								<li>(1) 거제청년센터는 특별한 사정이 없는 한 회원이 서비스를 이용할 수 있도록 합니다.</li>
								<li>(2) 거제청년센터는 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다.</li>
								<li>(3) 거제청년센터는 회원으로부터 소정의 절차에 의해 제기되는 의견에 대해서 적절한 절차를 거쳐 처리하며, 처리시 일정기간이 소요될 경우
									회원에게 그 사유와 처리 일정을 알려주어야 합니다.</li>
							</ol>
							<h6 class="m-b-md">제2조 회원정보 보안의 의무</h6>
							<ol class="m-b-lg">
								<li>(1) 회원의 ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있습니다.</li>
								<li>(2) 회원은 서비스의 일부로 보내지는 서비스의 전자우편을 받는 것에 동의합니다.</li>
								<li>(3) 자신의 ID가 부정하게 사용된 경우, 회원은 반드시 거제청년센터에 그 사실을 통보해야 합니다.</li>
								<li>(4) 거제청년센터는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.
									<ul class="register_dot">
										<li>가. 이용자들이 사전에 동의한 경우</li>
										<li>나. 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</li>
									</ul>
								</li>     
							</ol>
							<h5 class="text-center m-b-md">제6장 분쟁조정</h5>
							<ol class="m-b-md">
								<li>(1) 본 이용약관에 규정된 것을 제외하고 발생하는 서비스 이용에 관한 제반문제에 관한 분쟁은 최대한 쌍방합의에 의해 해결하도록 한다.</li>
								<li>(2) 서비스 이용으로 발생한 분쟁에 대해 소송이 제기될 경우 회사의 소재지를 관할하는 법원을 관할법원으로 합니다.</li>
							</ol>
							<p class="fwb">부칙<br>이 약관은 2019년 05월 31일 시행합니다.</p>
						</div>
					</div>
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" name="con" id="con" value="ok" style="width:25px;height:25px;">
						<label class="custom-control-label" for="con" style="font-size:17px;vertical-align:bottom;"> 동의합니다.</label>
					</div>

					<div class="line"></div>

					<h4>개인정보취급방침</h4>
					<div class="agreebox">
						<div class="agree_box">
							<h5 class="m-b-md">수집하는 개인정보 항목</h5>
							<ul class="register_dot m-b-lg">
								<li><span class="fwb">수집항목 : </span>성명, 이용자ID, 비밀번호, 휴대전화번호, 이메일, 서비스 이용기록, 접속 로그, 쿠키, 접속 IP 정보</li>
								<li><span class="fwb">개인정보 수집방법 : </span>홈페이지(회원가입), 대관신청, 행사 및 상담프로그램 신청</li>
							</ul>

							<h5 class="m-b-md">개인정보의 수집 및 이용목적</h5>
							<p class="m-b-md">거제청년센터는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</p>
							<ul class="register_dot m-b-lg">
								<li><span class="fwb">서비스 제공에 관한 계약 이행 </span>콘텐츠 제공 서비스</li>
								<li><span class="fwb">회원 관리 </span>회원제 서비스 이용에 따른 본인확인 , 개인 식별, 회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 연령확인, 불만처리 등 민원처리, 공지사항 전달</li>
								<li><span class="fwb">사이트 운영에 활용 </span>뉴스, 공지 등 정보 전달 , 접속 빈도 파악 또는 회원의 서비스 이용 및 통계</li>
							</ul>

							<h5 class="m-b-md">개인정보의 보유 및 이용기간</h5>
							<p class="m-b-md">원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 센터는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.</p>

							<ul class="register_dot">
								<li><span class="blackTxt fwb">보존 항목 : </span>이름, 이용자ID, 비밀번호, 전화번호, 주소, 휴대전화번호, 이메일</li>
								<li><span class="blackTxt fwb">보존 근거 : </span>전자상거래 등에서의 소비자보호에 관한 법률</li>
								<li><span class="blackTxt fwb">보존 기간 : </span>5년</li>
							</ul>
							<ul class="register_dot m-b-lg">
								<li><span class="blackTxt fwb">표시/광고에 관한 기록 : </span>6개월 (전자상거래등에서의 소비자보호에 관한 법률)</li>
								<li><span class="blackTxt fwb">계약 또는 청약철회 등에 관한 기록 : </span>5년 (전자상거래등에서의 소비자보호에 관한 법률)</li>
								<li><span class="blackTxt fwb">대금결제 및 재화 등의 공급에 관한 기록 : </span>5년 (전자상거래등에서의 소비자보호에 관한 법률)</li>
								<li><span class="blackTxt fwb">소비자의 불만 또는 분쟁처리에 관한 기록 : </span>3년 (전자상거래등에서의 소비자보호에 관한 법률)</li>
								<li><span class="blackTxt fwb"> 수집/처리 및 이용 등에 관한 기록 : </span>3년 (신용정보의 이용 및 보호에 관한 법률)</li>
							</ul>


							<h5 class="m-b-md">개인정보의 파기절차 및 방법</h5>
							<p class="m-b-md">거제청년센터는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.</p>
							<ul class="register_dot m-b-lg">
								<li><span class="blackTxt fwb">파기절차 : </span>회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.
							</li>
								<li><span class="blackTxt fwb">파기방법 : </span>전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</li>
							</ul>


							<h5 class="m-b-md">개인정보 제공</h5>
							<p class="m-b-md">거제청년센터는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.</p>
							<ul class="register_dot m-b-lg">
								<li> 이용자들이 사전에 동의한 경우</li>
								<li>법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</li>
							</ul>

							<h5 class="m-b-md">수집한 개인정보의 위탁</h5>
							<p class="m-b-md">거제청년센터는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다.
							향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.</p>


							<h5 class="m-b-md"> 이용자 및 법정대리인의 권리와 그 행사방법</h5>
							<p class="m-b-md">이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다.</p>

							<p class="m-b-md">이용자 혹은 만 14세 미만 아동의 개인정보 조회/수정을 위해서는 ‘개인정보변경’(또는 ‘회원정보수정’ 등)을 가입해지(동의철회)를 위해서는 “회원탈퇴”를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.
							혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다.
							귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다.</p>

							<p class="m-b-lg">또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다.
							거제청년센터는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 “거제청년센터가 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.</p>


							<h5 class="m-b-md">개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</h5>
							<p>거제청년센터는 귀하의 정보를 수시로 저장하고 찾아내는 ‘쿠키(cookie)’ 등을 운용합니다. 쿠키란 거제청년센터의 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다.</p>

							<p class="m-b-lg">거제청년센터는 다음과 같은 목적을 위해 쿠키를 사용합니다.</p>
							<ul class="register_dot m-b-lg">
								<li><span class="fwb">쿠키 등 사용 목적 </span>회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 개인 맞춤 서비스 제공<br>
								귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다.
								따라서, 귀하는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.
								</li>
									<li><span class="fwb">쿠키 설정 거부 방법 </span>예) 쿠키 설정을 거부하는 방법으로는 회원님이 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다.<br>
								설정방법 예(인터넷 익스플로어의 경우) : 웹 브라우저 상단의 도구 &gt; 인터넷 옵션 &gt; 개인정보<br>
								단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.</li>
							</ul>

							<h5 class="m-b-md">개인정보에 관한 민원서비스</h5>
							<p class="m-b-md">거제청년센터는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.</p>

							<ul class="register_dot m-b-md">
								<li><span class="blackTxt fwb">개인정보관리책임자 성명 :</span>김영진</li>
								<li><span class="blackTxt fwb">전화번호 :</span>055-736-6010</li>
								<li><span class="blackTxt fwb">이메일 :</span>kyj86@korea.kr</li>
							</ul>

							<p class="m-b-md">귀하께서는 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다.
							거제청년센터는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.</p>

							<p class="m-b-md">기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</p>
							<ul class="register_dot m-b-md">
								<li>1.개인분쟁조정위원회 (www.1336.or.kr/1336)</li>
								<li>2.정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)</li>
								<li>3.대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)</li>
								<li>4.경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)</li>
							</ul>
						</div>
					</div>
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" name="pri" id="pri" value="ok" style="width:25px;height:25px;">
						<label class="custom-control-label" for="pri" style="font-size:17px;vertical-align:bottom;"> 동의합니다.</label>
					</div>

					<div class="register_btn">
						<ul>
              <li><span class="btn-sumit" style="cursor:pointer;" onClick="sendit();">일반회원가입</span></li>
              <li><span class="btn-sumit" style="cursor:pointer;" onClick="sendit2();">업체회원가입</span></li>
							<li><a href="index.html" style="color:#fff !important;">취소</a></li>
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
	function sendit() {

		var con = document.getElementById('con').checked;
		var pri = document.getElementById('pri').checked;

		if (!con) {
			alert("이용약관에 동의해주셔야 합니다!");
			return false;
		}
		if (!pri) {
			alert("개인정보취급방침에 동의해주셔야 합니다!");
			return false;
		}
		location.href = 'register_form.html';
	}

  function sendit2() {

var con = document.getElementById('con').checked;
var pri = document.getElementById('pri').checked;

if (!con) {
  alert("이용약관에 동의해주셔야 합니다!");
  return false;
}
if (!pri) {
  alert("개인정보취급방침에 동의해주셔야 합니다!");
  return false;
}
location.href = 'register_form1.html';
}


	</script>

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

</html>