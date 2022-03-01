<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>${param.title}</title>
	
	<link type="text/css" href="${path}/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
	<link type="text/css" href="${path}/resources/vendor/leaflet/dist/leaflet.css" rel="stylesheet">
	<link rel="stylesheet" href="${path}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">
	<link rel="stylesheet" href="${path}/resources/vendor/jqvmap/dist/jqvmap.min.css">
	<link type="text/css" href="${path}/resources/css/spaces.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link type="text/css" href="${path}/resources/css/calendar.css" rel="stylesheet">
	
	<style>
	    .section-header {
	        padding-top: 0rem;
	    }
	
	    h1 {
	        font-size: 1.5rem;
	        line-height: 10;
	    }
	
	    h4 {
	        font-size: 20px;
	        text-align: left;
	        margin-left: 100px;
	    }
	    .mb-5 {
	        margin-bottom: -10rem !important;
	    }
	
	    .qwe-1 {
	        align-items: center !important;
	    }
	</style>

</head>

<body>
    <header class="header-global">
        <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg py-lg-3 px-lg-6 navbar-dark">
        <div class="container">
            <a class="navbar-brand @@logo_classes" href="${path}">
                <img class="navbar-brand-dark common" src="${path}/resources/img/logo.png" height="35" alt="Logo light">
            </a>
            <div class="navbar-collapse collapse" id="navbar_global">
                <ul class="navbar-nav navbar-nav-hover justify-content-center">
                    <li class="nav-item dropdown">
                        <a href="${path}/search/searchList"  class="nav-link">
                            <span class="nav-link-inner-text mr-1">구장 조회</span>
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="" id="supportDropdown" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                            <span class="nav-link-inner-text mr-1">매치</span>
                            <i class="fas fa-angle-down nav-link-arrow"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg" aria-labelledby="supportDropdown">
                            <div class="col-auto px-0">
                                <div class="list-group list-group-flush">
                                    <a href="${path}/match/matchList.do" class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                        <span class="icon icon-md icon-secondary"><i class="fas fa-file-alt"></i></span>
                                        <div class="ml-4">
                                            <span class="text-dark d-block">개인 매치<span class="badge badge-sm badge-secondary ml-2"></span></span>
                                        </div>
                                    </a>
                                    <a href="${path}/match/matchView.do" class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                        <span class="icon icon-md icon-primary"><i class="fas fa-file-alt"></i></span>
                                        <div class="ml-4">
                                            <span class="text-dark d-block">팀 매치</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="${path}/board/boardList" class="nav-link">
                            <span class="nav-link-inner-text mr-1">커뮤니티</span>
                        </a>
                    </li>
                </ul>
            </div>
            
            <c:if test="${loginMember == null}">
	            <div class="d-none d-lg-block @@cta_button_classes">
	                <a href="${path}/member/signIn" class="btn btn-md btn-outline-white animate-up-2 mr-3"><i class=""></i> <span class="d-xl-none">Docs</span> <span class="d-none d-xl-inline">로그인</span></a>
	                <a href="${path}/member/signUp" class="btn btn-md btn-secondary animate-up-2"><i class=""></i> 회원가입</a>
	            </div>
            </c:if>
            
            <c:if test="${loginMember != null}">
	            <div class="d-none d-lg-block @@cta_button_classes">${loginMember.name}</div>
	            <button onclick="location.href='${path}/member/myPages1;'" class="d-none d-lg-block @@cta_button_classes">마이페이지</button>
	            <button onclick="location.replace('${path}/logout')" class="d-none d-lg-block @@cta_button_classes">로그아웃</button>
            </c:if>
            
            <div class="d-flex d-lg-none align-items-center">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            </div>
        </div>
    </nav>
</header>

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
<script src="${path}/resources/assetss/js/vendor/apexcharts.min.js"></script>
<script src="${path}/resources/assetss/js/vendor/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${path}/resources/assetss/js/vendor/jquery-jvectormap-world-mill-en.js"></script>
<script src="${path}/resources/assetss/js/pages/demo.dashboard-analytics.js"></script>

</body>