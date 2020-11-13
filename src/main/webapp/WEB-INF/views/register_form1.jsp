<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="UTF-8">

<!-- Mirrored from www.geojeyouth.com/web/register_form by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Nov 2020 15:22:40 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
	<meta charset="UTF-8">
		<title>회원가입 | 거제청년센터 이룸 공식사이트</title>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
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
  
  <!-- <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/base.css"/>
	<link rel="stylesheet" type="text/css" href="js/jquery-ui.css"/>
	<link rel="stylesheet" type="text/css" href="css/layout.css"/>
	<link rel="stylesheet" type="text/css" href="css/content.css"/>
	<link rel="stylesheet" type="text/css" href="css/utobiz.css"/>
	<link rel="stylesheet" type="text/css" href="css/bbs.css"/>  -->

  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
  
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.2.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.js"></script>  
  
</head>
<body>
		<!-- header -->
		<!-- <header id="header"></header> -->
    <!-- //header -->
    
<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__cart">
      <div class="offcanvas__cart__item">
          <a href="./mypage.html" style="color: black;"><img src="" alt="">마이페이지</a>
      </div>
        <div class="offcanvas__cart__links">
            <a href="#"><img src="resources/img/icon/heart.png" alt=""></a>
            <a href="#" class="search-switch"><img src="resources/img/icon/search.png" alt=""></a>
        </div>
    </div>
    <div class="offcanvas__logo">
        <a href="./index.html"><img src="resources/img/멍이냥 로고2.png" width="150px" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__option">
        <ul>
          <li><a href="./register.html">회원가입</a></li>
          <li><a href="./login.html">로그인</a></li>
        </ul>
    </div>
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
			<div class="area_subVisual">
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
						<li><span class="num">01</span>약관동의</li>
						<li class="on"><span class="num">02</span>상세정보 입력</li>
						<li><span class="num">03</span>가입완료</li>
					</ul>

					<p>* 필수입력정보</p>
					<form name="myForm" id="myForm" method="post" action="http://www.geojeyouth.com/web/register_form.geoje" enctype="multipart/form-data" class="form-inline" autocomplete="off">
					<input type="hidden" name="mode" value="up">
					<div class="register_container_form">
						<ul>
							<li>
								<span class="fm_list">아이디 <b class="blgrTxt">*</b></span>
								<span class="fm_txt">
									<input type="text" name="uids" id="uids" class="input_txt" placeholder="4자이상 20자이하">
									<button type="button" class="btn-basic" onClick="chk_id();">중복조회</button>
								</span>
							</li>
							<li>
								<span class="fm_list">비밀번호 <b class="blgrTxt">*</b></span>
								<span class="fm_txt">
									<input type="password" name="upws" id="upws" class="input_txt ng" placeholder="8자이상 50자이하 문자+숫자+특수기호로 조합해주세요.">
								</span>
							</li>
							<li>
								<span class="fm_list">비밀번호확인 <b class="blgrTxt">*</b></span>
								<span class="fm_txt">
									<input type="password" name="upws_chk" id="upws_chk" class="input_txt ng">
								</span>
							</li>
							<li>
								<span class="fm_list">상호명<b class="blgrTxt">*</b></span>
								<span class="fm_txt">
									<input type="text" name="unames" id="unames" class="input_txt">
								</span>
              </li>
              <li>
								<span class="fm_list">홈페이지URL<b class="blgrTxt"></b></span>
								<span class="fm_txt">
									<input type="text" name="unames" id="unames" class="input_txt">
								</span>
							</li>
							<li>
								<span class="fm_list">생년월일 <b class="blgrTxt">*</b></span>
								<span class="fm_txt inauto">
									<select name="uyear" id="uyear" class="input_txt">
										<option value="">--</option>
																				<option value="2020">2020</option>
																				<option value="2019">2019</option>
																				<option value="2018">2018</option>
																				<option value="2017">2017</option>
																				<option value="2016">2016</option>
																				<option value="2015">2015</option>
																				<option value="2014">2014</option>
																				<option value="2013">2013</option>
																				<option value="2012">2012</option>
																				<option value="2011">2011</option>
																				<option value="2010">2010</option>
																				<option value="2009">2009</option>
																				<option value="2008">2008</option>
																				<option value="2007">2007</option>
																				<option value="2006">2006</option>
																				<option value="2005">2005</option>
																				<option value="2004">2004</option>
																				<option value="2003">2003</option>
																				<option value="2002">2002</option>
																				<option value="2001">2001</option>
																				<option value="2000">2000</option>
																				<option value="1999">1999</option>
																				<option value="1998">1998</option>
																				<option value="1997">1997</option>
																				<option value="1996">1996</option>
																				<option value="1995">1995</option>
																				<option value="1994">1994</option>
																				<option value="1993">1993</option>
																				<option value="1992">1992</option>
																				<option value="1991">1991</option>
																				<option value="1990">1990</option>
																				<option value="1989">1989</option>
																				<option value="1988">1988</option>
																				<option value="1987">1987</option>
																				<option value="1986">1986</option>
																				<option value="1985">1985</option>
																				<option value="1984">1984</option>
																				<option value="1983">1983</option>
																				<option value="1982">1982</option>
																				<option value="1981">1981</option>
																				<option value="1980">1980</option>
																				<option value="1979">1979</option>
																				<option value="1978">1978</option>
																				<option value="1977">1977</option>
																				<option value="1976">1976</option>
																				<option value="1975">1975</option>
																				<option value="1974">1974</option>
																				<option value="1973">1973</option>
																				<option value="1972">1972</option>
																				<option value="1971">1971</option>
																				<option value="1970">1970</option>
																				<option value="1969">1969</option>
																				<option value="1968">1968</option>
																				<option value="1967">1967</option>
																				<option value="1966">1966</option>
																				<option value="1965">1965</option>
																				<option value="1964">1964</option>
																				<option value="1963">1963</option>
																				<option value="1962">1962</option>
																				<option value="1961">1961</option>
																				<option value="1960">1960</option>
																				<option value="1959">1959</option>
																				<option value="1958">1958</option>
																				<option value="1957">1957</option>
																				<option value="1956">1956</option>
																				<option value="1955">1955</option>
																				<option value="1954">1954</option>
																				<option value="1953">1953</option>
																				<option value="1952">1952</option>
																				<option value="1951">1951</option>
																				<option value="1950">1950</option>
																				<option value="1949">1949</option>
																				<option value="1948">1948</option>
																				<option value="1947">1947</option>
																				<option value="1946">1946</option>
																				<option value="1945">1945</option>
																				<option value="1944">1944</option>
																				<option value="1943">1943</option>
																				<option value="1942">1942</option>
																				<option value="1941">1941</option>
																				<option value="1940">1940</option>
																				<option value="1939">1939</option>
																				<option value="1938">1938</option>
																				<option value="1937">1937</option>
																				<option value="1936">1936</option>
																				<option value="1935">1935</option>
																				<option value="1934">1934</option>
																				<option value="1933">1933</option>
																				<option value="1932">1932</option>
																				<option value="1931">1931</option>
																				<option value="1930">1930</option>
																				<option value="1929">1929</option>
																				<option value="1928">1928</option>
																				<option value="1927">1927</option>
																				<option value="1926">1926</option>
																				<option value="1925">1925</option>
																				<option value="1924">1924</option>
																				<option value="1923">1923</option>
																				<option value="1922">1922</option>
																				<option value="1921">1921</option>
																				<option value="1920">1920</option>
																				<option value="1919">1919</option>
																				<option value="1918">1918</option>
																				<option value="1917">1917</option>
																				<option value="1916">1916</option>
																				<option value="1915">1915</option>
																				<option value="1914">1914</option>
																				<option value="1913">1913</option>
																				<option value="1912">1912</option>
																				<option value="1911">1911</option>
																				<option value="1910">1910</option>
																			</select> 년
									<select name="umonth" id="umonth" class="input_txt">
										<option value="">-</option>
										<option value="01">01</option>
										<option value="02">02</option>
										<option value="03">03</option>
										<option value="04">04</option>
										<option value="05">05</option>
										<option value="06">06</option>
										<option value="07">07</option>
										<option value="08">08</option>
										<option value="09">09</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
									</select> 월 
									<select name="uday" id="uday" class="input_txt">
										<option value="">-</option>
										<option value="01">01</option>
										<option value="02">02</option>
										<option value="03">03</option>
										<option value="04">04</option>
										<option value="05">05</option>
										<option value="06">06</option>
										<option value="07">07</option>
										<option value="08">08</option>
										<option value="09">09</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
									</select> 일
								</span>
							</li>
							<li>
								<span class="fm_list">사업자번호<b class="blgrTxt">*</b></span>
								<span class="fm_txt">
									<input type="text" name="ucell" id="ucell" class="input_txt">
								</span>
							</li>
							<li>
								<span class="fm_list">이메일 <b class="blgrTxt">*</b></span>
								<span class="fm_txt">
									<input type="text" name="umail" id="umail" class="input_txt" style="min-width:60%;" placeholder="abc@abc.com 형식을 취해주세요.">
								</span>
							</li>
							<li>
								<span class="fm_list">주소 <b class="blgrTxt">*</b></span>
								<span class="fm_txt inauto">
									<input type="text" name="upost" id="upost" class="input_txt postcodify_postcode5" style="width:25%; min-width:25%;">
									<button type="button" class="btn-basic" id="postcodify_search_button">우편번호 검색</button><br>
									<input type="text" name="uadd" id="uadd" class="input_txt input_txt2 postcodify_address" style="min-width:80%;"><br>
									<input type="text" name="uadd2" id="uadd2" class="input_txt postcodify_details" style="min-width:80%;"> 나머지주소
								</span>
							</li>
							<li>
								<span class="fm_list">이메일 수신</span>
								<span class="fm_txt">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" name="mail_in" id="mail_in" value="Y" style="width:22px;height:22px;" checked="checked">
										<label class="custom-control-label" for="pri" style="font-size:17px;font-weight:400;vertical-align:bottom;"> 이메일 수신에 동의합니다.</label>
									</div>
								</span>
							</li>
							<li>
								<span class="fm_list">SMS 수신</span>
								<span class="fm_txt">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" name="sms_in" id="sms_in" value="Y" style="width:22px;height:22px;" checked="checked">
										<label class="custom-control-label" for="pri" style="font-size:17px;font-weight:400;vertical-align:bottom;"> SMS 수신에 동의합니다.</label>
									</div>
								</span>
							</li>
						</ul>
					</div>

					<div class="register_btn">
						<ul>
							<li><span class="btn-sumit" style="cursor:pointer;" onClick="sendit();">회원가입</span></li>
							<li><a href="index.html" style="color:#fff !important;">취소</a></li>
						</ul>
					</div>
					</form>
				</div>

			<!-- E : 내용 -->
			</div>
		</div>
		<!-- //본문 -->
		</section>

	<script src="${pageContext.request.contextPath}/resources/d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script type="text/javascript">
	$(function() { 
		$("#postcodify_search_button").postcodifyPopUp(); 
	});
	
	function go_url(i) {
		location.href = i;
	}
	function chk_id() {
	  var cid = $("#uids").val();
	  if(!cid) { 
		alert('아이디를 입력해주세요.');
		$("#uids").focus();
		return false;
	  }
	  $.ajax({
		type: "POST",
		url: "./load/chk_id.geoje",
		data: "cid="+cid,
		contentType:"application/x-www-form-urlencoded; charset=UTF-8",
		async:  false,
		success: function(result) {
			alert(result);
			$("#uids").focus();
		}
	  });
	}
	function sendit() {
		
		//oEditors.getById["editor1"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.

		var pattern1 = /[0-9]/;
        var pattern2 = /[a-zA-Z]/;
        var pattern3 = /[~!@\#$%<>^&*]/;
		
		var frm = document.myForm;

		if (!frm.uids.value) {
			alert("아이디를 입력해주세요!");
			frm.uids.focus();
			return false;
		}
		//아이디 유효성 검사 (영문소문자, 숫자만 허용)
        for (i = 0; i < frm.uids.value.length; i++) {
            ch =frm.uids.value.charAt(i)
            if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
				alert("아이디는 대소문자, 숫자만 입력가능합니다.")
				frm.uids.focus();
                return false;
            }
        }
        //아이디에 공백 사용하지 않기
        if (frm.uids.value.indexOf(" ") >= 0) {
            alert("아이디에 공백을 사용할 수 없습니다.")
           frm.my_id.focus()
           frm.my_id.select()
            return false;
        }
        //아이디 길이 체크 (4~12자)
        if (frm.uids.value.length<3 ||frm.uids.value.length>20) {
            alert("아이디를 3자이상 20자 이하로 입력해주세요.")
			frm.uids.focus();
            return false;
        }
		if (!frm.upws.value) {
			alert("비밀번호를 입력해주세요!");
			frm.upws.focus();
			return false;
		}
		//비밀번호 길이 체크(4~8자 까지 허용)
        if (frm.upws.value.length<8 ||frm.upws.value.length>50) {
			alert("비밀번호를 8자이상 50자이하로 입력해주세요.")
			frm.upws.focus();
            return false;
        }
		if(!pattern1.test(frm.upws.value)||!pattern2.test(frm.upws.value)||!pattern3.test(frm.upws.value)) {
            alert("비밀번호는 영문+숫자+특수기호가 들어가야 합니다.");
			frm.upws.focus();
            return false;
        }          
		if (!frm.upws_chk.value) {
			alert("비밀번호 확인을 입력해주세요!");
			frm.upws_chk.focus();
			return false;
		}
		//비밀번호와 비밀번호 확인 일치여부 체크
        if (frm.upws.value !=frm.upws_chk.value) {
            alert("비밀번호가 일치하지 않습니다")
			frm.upws_chk.focus();
            return false;
        }
		if (!frm.unames.value) {
			alert("성명을 입력해주세요!");
			frm.unames.focus();
			return false;
		}
		if (!frm.uyear.value) {
			alert("태어나신 년도를 선택해주세요!");
			frm.uyear.focus();
			return false;
		}
		if (!frm.umonth.value) {
			alert("태어나신 월을 선택해주세요!");
			frm.umonth.focus();
			return false;
		}
		if (!frm.uday.value) {
			alert("태어나신 날짜를 선택해주세요!");
			frm.uday.focus();
			return false;
		}
		if (!frm.ucell.value) {
			alert("휴대폰 번호를 입력해주세요!");
			frm.ucell.focus();
			return false;
		}
		if (!frm.umail.value) {
			alert("이메일 주소를 입력해주세요!");
			frm.umail.focus();
			return false;
		}
		if (!frm.upost.value) {
			alert("주소검색을 눌러서 주소를 입력해주세요!");
			frm.upost.focus();
			return false;
		}
		if (!frm.uadd.value) {
			alert("주소검색을 눌러서 주소를 입력해주세요!");
			frm.uadd.focus();
			return false;
		}
		
		document.myForm.submit();
	}
	</script>
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
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.barfiller.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<!-- <script src="js/main.js"></script> -->
</body>

<!-- Mirrored from www.geojeyouth.com/web/register_form by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 05 Nov 2020 15:22:40 GMT -->
</html>
