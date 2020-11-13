<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="UTF-8">
  <head>
    <title>Meal &mdash; Free Template for Restaurants by Free-Template.co</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Free Template by Free-Template.co" />
    <meta name="keywords" content="free template, free bootstrap, free website template" />
    <meta name="author" content="Free-Template.co" />

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:300,400,700,800|Open+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/reserve/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/reserve/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/reserve/css/owl.carousel.min.css">
                                                                   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/reserve/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/reserve/css/aos.css">
                                                                   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/reserve/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/reserve/css/jquery.timepicker.css">
                                                                   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/reserve/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/reserve/fonts/fontawesome/css/font-awesome.min.css">
                                                                   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/reserve/fonts/flaticon/font/flaticon.css">
                                                                   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/reserve/css/style.css">

  </head>
    <body data-spy="scroll" data-target="#ftco-navbar-spy" data-offset="0">

      
      <div class="section bg-light" data-aos="fade-up" id="section-reservation">
        <div class="container">
          <div class="row section-heading justify-content-center mb-5">
            <div class="col-md-8 text-center">
              
            </div>
          </div>
          <div class="row justify-content-center">
            <div class="col-md-10 p-5 form-wrap">
              <form action="#">
                <div class="row mb-4">
                  <div class="form-group col-md-4">
                    <label for="persons" class="label">Kind of animal</label>
                    <div class="form-field-icon-wrap">
                      <span class="icon ion-android-arrow-dropdown"></span>
                      <select name="persons" id="persons" class="form-control">
                        <option value="">선택해주세요</option>
                        <option value="">강아지</option>
                        <option value="">고양이</option>
                        <option value="">기타</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="persons" class="label">Hair length</label>
                    <div class="form-field-icon-wrap">
                      <span class="icon ion-android-arrow-dropdown"></span>
                      <select name="persons" id="persons" class="form-control">
                        <option value="">선택해주세요</option>
                        <option value="">장모</option>
                        <option value="">단모</option>
                        <option value="">이중모</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="persons" class="label">Weight</label>
                    <div class="form-field-icon-wrap">
                      <span class="icon ion-android-arrow-dropdown"></span>
                      <select name="persons" id="persons" class="form-control">
                        <option value="">선택해주세요</option>
                        <option value="">대형</option>
                        <option value="">중형</option>
                        <option value="">소형</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="persons" class="label">Number of animal</label>
                    <div class="form-field-icon-wrap">
                      <span class="icon ion-android-arrow-dropdown"></span>
                      <select name="persons" id="persons" class="form-control">
                        <option value="">1 마리</option>
                        <option value="">2 마리</option>
                        <option value="">3 마리</option>
                        <option value="">4 마리</option>
                        <option value="">5+ 마리</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="date" class="label">Start Date</label>
                    <div class="form-field-icon-wrap">
                      <span class="icon ion-calendar"></span>
                      <input type="text" class="form-control" id="date2">
                    </div>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="date" class="label">End Date</label>
                    <div class="form-field-icon-wrap">
                      <span class="icon ion-calendar"></span>
                      <input type="text" class="form-control" id="date">
                    </div>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="time" class="label">Time</label>
                    <div class="form-field-icon-wrap">
                      <span class="icon ion-android-time"></span>
                      <input type="text" class="form-control" id="time">
                    </div>
                  </div>
                </div>
                <div class="row justify-content-center">
                  <div class="col-md-4">
                    <input type="submit" class="btn btn-primary btn-outline-primary btn-block" value="예약완료">
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

    <!-- loader -->
    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff7a5c"/></svg></div>

    <script src="${pageContext.request.contextPath}/resources/reserve/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/reserve/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/reserve/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/reserve/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/reserve/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/reserve/js/jquery.waypoints.min.js"></script>

    <script src="${pageContext.request.contextPath}/resources/reserve/js/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/reserve/js/jquery.timepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/reserve/js/jquery.stellar.min.js"></script>

    <script src="${pageContext.request.contextPath}/resources/reserve/js/jquery.easing.1.3.js"></script>    

    <script src="${pageContext.request.contextPath}/resources/reserve/js/aos.js"></script>
    

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>

    <script src="${pageContext.request.contextPath}/resources/reserve/js/main.js"></script>
  </body>
</html>