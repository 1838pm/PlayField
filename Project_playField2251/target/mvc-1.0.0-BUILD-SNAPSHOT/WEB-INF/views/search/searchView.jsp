<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Primary Meta Tags -->
    <title>구장 조회</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="title" content="Spaces - Item details">
    <meta name="author" content="Themesberg">
    <meta name="description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
    <meta name="keywords" content="bootstrap, bootstrap 4 template, directory listing bootstrap, bootstrap 4 listing, bootstrap listing, bootstrap 4 directory listing template, vector map, leaflet js template, mapbox theme, mapbox template, dashboard, themesberg, user dashboard bootstrap, dashboard bootstrap, ui kit, bootstrap ui kit, premium bootstrap theme"
    />
    <link rel="canonical" href="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://demo.themesberg.com/pixel-pro">
    <meta property="og:title" content="Spaces - Item details">
    <meta property="og:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
    <meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

    <!-- Twitter -->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:url" content="https://demo.themesberg.com/pixel-pro">
    <meta property="twitter:title" content="Spaces - Item details">
    <meta property="twitter:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
    <meta property="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="120x120" href="${path}/resources/assets/img/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="${path}/resources/assets/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/assets/img/favicon/favicon-16x16.png">
    <link rel="manifest" href="${path}/resources/assets/img/favicon/site.webmanifest">
    <link rel="mask-icon" href="${path}/resources/assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">

    <!-- Fontawesome -->
    <link type="text/css" href="${path}/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Leaflet JS -->
    <link type="text/css" href="${path}/resources/vendor/leaflet/dist/leaflet.css" rel="stylesheet">

    <!-- Fancybox -->
    <link rel="stylesheet" href="${path}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">

    <!-- VectorMap -->
    <link rel="stylesheet" href="${path}/resources/vendor/jqvmap/dist/jqvmap.min.css">

    <!-- Main CSS -->
    <link type="text/css" href="${path}/resources/css/spaces.css" rel="stylesheet">
    
    <!-- slide css-->
    <link rel="stylesheet" href="${path}/resources/css/slide.css">

    <!-- 달력 만들기 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- 달력 css,js -->
    <link rel="stylesheet" href="${path}/resources/calendar/calendar.css">
    <link rel="stylesheet" href="${path}/resources/calendar/calender.js">


    <!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

</head>
<style>
    .col-lg-8 {
        height: 100px;
    }

    .p-4 {
        padding: 0.5rem !important;
    }

    .mb-4 {
        margin-bottom: 0.5rem !important;
    }
    .mb-5 {
        height: 415px;
    }

    .mt-5 {
        margin-top: 1rem !important;
    }

    .mb-3 {
        margin-bottom: 1rem !important;
    }

    @media (min-width: 768px) {
    .section-lg {
    padding-top: 8rem;
    padding-bottom: 1rem;
        }   
    }
    
    .custom_calendar_table {
    width: 70%;
    margin: auto;
    text-align: center;
	}
	
	table, td, th {
	    border-collapse : collapse;
	};

</style>

<body>
    <!--  -->
    <!-- 상단 배경화면  -->
    <div class="section section-header section-image bg-primary overlay-primary text-white overflow-hidden pb-6" data-background="${path}/resources/img/cup.jpg">
        <div class="container z-2">
            <div class="row justify-content-center pt-3">
                <div class="col-12 text-center">

                    <h1 class="mb-4">손기정 체육공원 축구장</h1>
                    <div class="d-block d-md-flex justify-content-center">
                        <span class="h6 font-weight-light"><span class="fas fa-check-circle mr-1 pr-1"></span>Verified</span>
                        <span class="lh-120 ml-md-4"><i class="fas fa-map-marker-alt mr-1 pr-1"></i>서울시 중구 만리동 2가 6-1</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  -->
    <!--  -->

    <div class="section section-lg pt-5">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <!-- Tab -->
                    <nav>
                        <div class="nav nav-tabs flex-column flex-md-row border-light mb-3" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab" aria-controls="nav-about" aria-selected="true"><span class="far fa-address-card mr-2"></span>시설</a>
                            <a class="nav-item nav-link" id="nav-reviews-tab" data-toggle="tab" href="#nav-reviews" role="tab" aria-controls="nav-reviews" aria-selected="false"><span class="far fa-star mr-2"></span>리뷰</a>
                            <a class="nav-item nav-link" id="nav-location-tab" data-toggle="tab" href="#nav-location" role="tab" aria-controls="nav-location" aria-selected="false"><span class="fas fa-map-marker-alt mr-2"></span>지도</a>
                        </div>
                    </nav>

                    <!-- About Tab -->
                    <div class="tab-content mt-5 mb-3" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
                            <div class="row mb-5">
                                <div class="col-12" style="height: 415px;">
                                    <div class="fancy-gallery mb-5">
                                        <div id="slide">
                                            <input type="radio" name="pos" id="pos1" checked>
                                            <input type="radio" name="pos" id="pos2">
                                            <input type="radio" name="pos" id="pos3">
                                            <input type="radio" name="pos" id="pos4">
                                            <ul>
                                              <li><a href=""><img src="${path}/resources/img/madeul_Stadium.jpg" alt="" style="height: 410px;"></a></li>
                                              <!-- img 꼭 height 넣어주기!! -->
                                              <li></li>
                                              <li></li>
                                              <li></li>
                                            </ul>
                                            <p class="pos">
                                              <label for="pos1"></label>
                                              <label for="pos2"></label>
                                              <label for="pos3"></label>
                                              <label for="pos4"></label>
                                            </p>
                                          </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End of About Tab -->
                        <!-- 리뷰 -->
                        <div class="tab-pane fade" id="nav-reviews" role="tabpanel" aria-labelledby="nav-reviews-tab">
                            <div class="card bg-white border border-light p-4 mb-4">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <div>
                                        <a href="./profile.html" class="h5">구장이 좋아요</a>
                                        <ul class="list-unstyled d-flex mt-1 mb-0">
                                            <li class="list-item small mr-3">by 봉찬</li>
                                            <li class="list-item small">2 weeks ago</li>
                                        </ul>
                                    </div>
                                    <div class="d-flex justify-content-end">
                                        <span class="d-flex justify-content-center">
                                                <i class="star fa-star fas text-warning mr-2"></i>
                                                <i class="star fa-star fas text-warning mr-2"></i>
                                                <i class="star fa-star fas text-warning mr-2"></i>
                                                <i class="star fa-star  fas text-warning  mr-2"></i>
                                                <i class="star far fa-star text-gray"></i>
                                            </span>
                                    </div>
                                </div>
                                <p class="m-0">구장이 깔끔해서 자주 올 것 같아요!</p>
                            </div>
                            <div class="card bg-white border border-light p-4 mb-4">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <div>
                                        <a href="./profile.html" class="h5">시설이 잘되어있어요</a>
                                        <ul class="list-unstyled d-flex mt-1 mb-0">
                                            <li class="list-item small mr-3">by 영재</li>
                                            <li class="list-item small">2 weeks ago</li>
                                        </ul>
                                    </div>
                                    <div class="d-flex justify-content-end">
                                        <span class="d-flex justify-content-center">
                                                <i class="star fa-star fas text-warning mr-2"></i>
                                                <i class="star fa-star fas text-warning mr-2"></i>
                                                <i class="star fa-star fas text-warning mr-2"></i>
                                                <i class="star fa-star  fas text-warning  mr-2"></i>
                                                <i class="star far fa-star text-gray"></i>
                                            </span>
                                    </div>
                                </div>
                                <p class="m-0">기분 좋게 볼 차고 가요!</p>
                            </div>
                            <form method="post">
                                <div class="d-flex justify-content-between align-items-center mb-3 mt-5">
                                    <h2 class="h5 m-0">리뷰 작성하기</h2>
                                    <span class="d-flex justify-content-center stars-rating">
                                            <i class="star far fa-star text-gray mr-2" data-rating-value="1"></i>
                                            <i class="star far fa-star text-gray mr-2" data-rating-value="2"></i>
                                            <i class="star far fa-star text-gray mr-2" data-rating-value="3"></i>
                                            <i class="star far fa-star text-gray mr-2" data-rating-value="4"></i>
                                            <i class="star far fa-star text-gray" data-rating-value="5"></i>
                                        </span>
                                </div>
                                <textarea name="description" class="form-control border" placeholder="리뷰를 작성해주세요." rows="6" data-bind-characters-target="#charactersRemaining" maxlength="100" required style="height: 100px"></textarea>
                                <div class="d-flex justify-content-between mt-3">
                                    <small class="font-weight-light">
                                            <span id="charactersRemaining">1000</span> characters remaining</small>
                                    <button type="submit" class="btn btn-primary animate-up-2">Add review</button>
                                </div>
                            </form>
                        </div>
                        <!-- End of Reviews Tab -->
                        <div class="tab-pane fade" id="nav-location" role="tabpanel" aria-labelledby="nav-location-tab">
                            <div class="row">
                                <div class="col-12">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1581.4903432379253!2d126.96459950732662!3d37.55551881399785!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca264d582c085%3A0x7ba1f4a639ad72bd!2z7IaQ6riw7KCVIOyytOycoeqzteybkCDstpXqtazsnqU!5e0!3m2!1sko!2skr!4v1644027631134!5m2!1sko!2skr"
                                        width="730" height="410" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- End of tab -->
                </div>

                <!-- 구장정보-->
                <div class="card border-light mt-4 p-3">
                    <h3 class="font-weight-normal"><b>손기정 체육공원 축구장</b></h3>
                    <h6 class="font-weight-normal">서울시 중구 만리동 2가 6-1</h6>
                    <h5 class="font-weight-normal">
                        <b><li>구장정보</li></b>
                    </h5>
                    <p><b>구장크기 : 64m x 42m</b></p>
                    <p><b>추천인원 : 9 vs 9</b></p>
                    <p><b>구장정보 : 야외 인조잔디</b></p>

                    <i class="fas fa-parking"> 주차가능</i><br>
                    <i class="fas fa-temperature-high"> 냉난방시설</i><br>
                    <i class="fas fa-shower"> 샤워시설</i><br>
                    <i class="fas fa-futbol"> 공대여</i><br>
                    <i class="fas fa-shoe-prints"> 축구화 대여</i><br>
                    <i class="fas fa-restroom"> 화장실</i>
                </div>
            </div>
        </div>
    </div>
	<div class="row justify-content-center">
          <div class="text-center">
              <div id="calendarForm">
              </div>
              </div>
          </div>
    </div>

    <!-- Calendar script 적용 -->
    <script>
    (function () {
        calendarMaker($("#calendarForm"), new Date());
    })();
    
    var nowDate = new Date();
    function calendarMaker(target, date) {
        if (date == null || date == undefined) {
            date = new Date();
        }
        nowDate = date;
        if ($(target).length > 0) {
            var year = nowDate.getFullYear();
            var month = nowDate.getMonth() + 1;
            $(target).empty().append(assembly(year, month));
        } else {
            console.error("custom_calendar Target is empty!!!");
            return;
        }
    
        var thisMonth = new Date(nowDate.getFullYear(), nowDate.getMonth(), 1);
        var thisLastDay = new Date(nowDate.getFullYear(), nowDate.getMonth() + 1, 0);
    
    
        var tag = "<tr>";
        var cnt = 0;
        //빈 공백 만들어주기
        for (i = 0; i < thisMonth.getDay(); i++) {
            tag += "<td></td>";
            cnt++;
        }
    
        //날짜 채우기
        for (i = 1; i <= thisLastDay.getDate(); i++) {
            if (cnt % 7 == 0) { tag += "<tr>"; }
    
            tag += "<td>" + i + "</td>";
            cnt++;
            if (cnt % 7 == 0) {
                tag += "</tr>";
            }
        }
        $(target).find("#custom_set_date").append(tag);
        calMoveEvtFn();
    
        function assembly(year, month) {
            var calendar_html_code =
                "<table class='custom_calendar_table'>" +
                "<colgroup>" +
                "<col style='width:81px'/>" +
                "<col style='width:81px'/>" +
                "<col style='width:81px'/>" +
                "<col style='width:81px'/>" +
                "<col style='width:81px'/>" +
                "<col style='width:81px'/>" +
                "<col style='width:81px'/>" +
                "</colgroup>" +
                "<thead class='cal_date'>" +
                "<th><button type='button' class='prev'><</button></th>" +
                "<th colspan='5'><p><span>" + year + "</span>년 <span>" + month + "</span>월</p></th>" +
                "<th><button type='button' class='next'>></button></th>" +
                "</thead>" +
                "<thead  class='cal_week'>" +
                "<th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th>" +
                "</thead>" +
                "<tbody id='custom_set_date'>" +
                "</tbody>" +
                "</table>";
            return calendar_html_code;
        }
    
        function calMoveEvtFn() {
            //전달 클릭
            $(".custom_calendar_table").on("click", ".prev", function () {
                nowDate = new Date(nowDate.getFullYear(), nowDate.getMonth() - 1, nowDate.getDate());
                calendarMaker($(target), nowDate);
            });
            //다음날 클릭
            $(".custom_calendar_table").on("click", ".next", function () {
                nowDate = new Date(nowDate.getFullYear(), nowDate.getMonth() + 1, nowDate.getDate());
                calendarMaker($(target), nowDate);
            });
            //일자 선택 클릭
            $(".custom_calendar_table").on("click", "td", function () {
                $(".custom_calendar_table .select_day").removeClass("select_day");
                $(this).removeClass("select_day").addClass("select_day");
            });
        }
    }
    </script>

	<script src="${path}/resources/js/calendar.js"></script>
</body>

</html>
