<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8" />
<title>플레이필드</title>

<link type="text/css" href="${path}/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
<link type="text/css" href="${path}/resources/vendor/leaflet/dist/leaflet.css" rel="stylesheet">
<link rel="stylesheet" href="${path}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">
<link rel="stylesheet" href="${path}/resources/vendor/jqvmap/dist/jqvmap.min.css">
<link type="text/css" href="${path}/resources/css/spaces.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link type="text/css" href="${path}/resources/css/calendar.css" rel="stylesheet">

</head>

<body>
    <footer class="footer py-6 bg-primary text-white">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 mb-3 mb-xl-0">
                    <img src="${path}/resources/./img/logo.png" height="30" class="mb-3" alt="PLAY FIELD">
                    <p>SOCCER MATCH</p>
                </div>
                <div class="col-6 col-xl-2 mb-5 mb-xl-0">
                    <span class="h5">구장검색</span>
                    <ul class="footer-links mt-2">
                        <li><a href="${path}">구장 조회</a></li>
                        <li><a href="${path}">구장 검색</a></li>
                    </ul>
                </div>
                <div class="col-6 col-xl-2 mb-5 mb-xl-0">
                    <span class="h5">매치</span>
                    <ul class="footer-links mt-2">
                        <li><a href="${path}">개인 매치</a></li>
                        <li><a href="${path}">팀 매치</a></li>
                    </ul>
                </div>
                <div class="col-6 col-xl-2 mb-5 mb-xl-0">
                    <span class="h5">커뮤니티</span>
                    <ul class="footer-links mt-2">
                        <li><a href="${path}">운동 게시판</a></li>
                        <li><a href="${path}">자유 게시판</a></li>
                    </ul>
                </div>
            </div>
            <hr class="my-3 my-lg-5">
            <div class="row">
                <div class="col mb-md-0">
                    <a href="${path}" class="d-flex justify-content-center">
                        <img src="${path}/resources/./img/logo.png" height="25" class="mb-3" alt="PLAYFIELD, soccer match">
                    </a>
                    <div class="d-flex text-center justify-content-center align-items-center" role="contentinfo">
                        <p class="font-weight-normal font-small mb-0">SOCCER MATCH, KH 2조 finalproject</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="${path}/resources/vendor/jquery/dist/jquery.min.js"></script>
    <script src="${path}/resources/vendor/popper.js/dist/umd/popper.min.js"></script>
    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="${path}/resources/vendor/headroom.js/dist/headroom.min.js"></script>
    <script src="${path}/resources/vendor/onscreen/dist/on-screen.umd.min.js"></script>
    <script src="${path}/resources/vendor/nouislider/distribute/nouislider.min.js"></script>
    <script src="${path}/resources/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="${path}/resources/vendor/waypoints/lib/jquery.waypoints.min.js"></script>
    <script src="${path}/resources/vendor/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="${path}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js"></script>
    <script src="${path}/resources/vendor/sticky-sidebar/dist/sticky-sidebar.min.js"></script>
    <script src="${path}/resources/vendor/leaflet/dist/leaflet.js"></script>
    <script src="${path}/resources/vendor/chartist/dist/chartist.min.js"></script>
    <script src="${path}/resources/vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="${path}/resources/vendor/jqvmap/dist/jquery.vmap.min.js"></script>
    <script src="${path}/resources/vendor/jqvmap/dist/maps/jquery.vmap.usa.js"></script>
    <script src="${path}/resources/assets/js/jquery.slideform.js"></script>
    <script src="${path}/resources/assets/js/spaces.js"></script>
    <script src="${path}/resources/assets/js/calendar.js"></script>
    
    </body>
    </html>