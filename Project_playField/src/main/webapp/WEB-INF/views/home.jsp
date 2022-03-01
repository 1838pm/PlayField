<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>플레이 필드</title>

    <link type="text/css" href="${path}/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link type="text/css" href="${path}/resources/vendor/leaflet/dist/leaflet.css" rel="stylesheet">
    <link rel="stylesheet" href="${path}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">
    <link rel="stylesheet" href="${path}/resources/vendor/jqvmap/dist/jqvmap.min.css">
    <link type="text/css" href="${path}/resources/css/spaces.css" rel="stylesheet">

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
            font-family:"Font Awesome 5 Free";
        }
        .mb-5 {
            margin-bottom: -10rem !important;
        }

        .qwe-1 {
            align-items: center !important;
        }

        .contain {
            position: relative;
            font: 400 1em/1.5 "Neuton"; background: #000000; color: rgba(255,255,255,.80); text-align: center; margin: 0
        }

        a {
            text-decoration: none;
        }
        a:visited {
            color: white;
        }

        img:hover {
            cursor: pointer;
            transform: scale(1.1);
        }

        .sport {
            text-align: center;
            -webkit-animation: fadein 5s; 
            -moz-animation: fadein 5s; 
            -ms-animation: fadein 5s; 
            -o-animation: fadein 5s; 
            animation: fadein 5s;
        }

        .box {            
            font-size: 21px;
        
            -webkit-animation: fadein 3s;
            -moz-animation: fadein 3s; 
            -ms-animation: fadein 3s; 
            -o-animation: fadein 3s;
            animation: fadein 3s;
        }
 
        @keyframes fadein {
        from { opacity: 0; }
        to   { opacity: 1; }
        }
    
            @-moz-keyframes fadein {
            from { opacity: 0; }
            to   { opacity: 1; }
            }
        
        @-webkit-keyframes fadein {
            from { opacity: 0; }
            to   { opacity: 1; }
        }
        
        @-ms-keyframes fadein {
            from { opacity: 0; }
            to   { opacity: 1; }
        }
        
        @-o-keyframes fadein {
            from { opacity: 0; }
            to   { opacity: 1; }
        }

        .tx {
            font: 700 4em/1 "Oswald", sans-serif;
            letter-spacing: 0;
            padding: .25em 0 .325em;
            display: block;
            margin: 0 50px;
            text-shadow: 0 0 80px rgba(255,255,255,.5);
            opacity: 1;

            background: url(https://i.ibb.co/RDTnNrT/animated-text-fill.png) repeat-y;
            -webkit-background-clip: text;
            background-clip: text;

            -webkit-text-fill-color: transparent;
            -webkit-animation: aitf 80s linear infinite;

            -webkit-transform: translate3d(0,0,0);
            -webkit-backface-visibility: hidden;
        }

        @-webkit-keyframes aitf {
            0% { background-position: 0% 50%; }
            100% { background-position: 100% 50%; }
        }

        .box > p {
            letter-spacing: 9px;
            display: inline-block;
            position: absolute;
            top: 15%;
            left: 27%;
            width: 1500px;
            margin: 0 15px 0 -20em;
        }

        #ty {
            position: absolute;
            display: inline-block;
            top: 30%;
            left: 37%;
            width: 1500px;
            margin: 0 15px 0 -20em;
            letter-spacing: 4px;
        }

        .img {
            filter: drop-shadow(5px 5px 5px #FFF);
            transition: all 0.2s linear;
            transform: scale(1.4);
            overflow: hidden;
        }

        .sport > a {
            font-family: "Poppins", sans-serif;
            text-shadow: 0 0 80px rgb(255,255,255,50%);;
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
                        <a href="${path}/search/searchList" class="nav-link">
                            <span class="nav-link-inner-text mr-1">구장 검색</span>
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" id="supportDropdown" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                            <span class="nav-link-inner-text mr-1">매치</span>
                            <i class="fas fa-angle-down nav-link-arrow"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg" aria-labelledby="supportDropdown">
                            <div class="col-auto px-0">
                                <div class="list-group list-group-flush">
                                    <a href="${path}/match/matchList.do" class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                        <span class="icon icon-md icon-secondary"><i class="fas fa-file-alt"></i></span>
                                        <div class="ml-4">
                                            <span class="text-dark d-block">개인매치<span class="badge badge-sm badge-secondary ml-2"></span></span>
                                        </div>
                                    </a>
                                    <a href="${path}/match/matchView.do" class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                        <span class="icon icon-md icon-primary"><i class="fas fa-file-alt"></i></span>
                                        <div class="ml-4">
                                            <span class="text-dark d-block">팀매치</span>
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
        </div>
    </nav>
</header>
        <div class="contain">
            <video muted autoplay loop style="width: 100%;">
                <source src="${path}/resources/video/stadium.mp4" type="video/mp4">
            </video>

            <div class="box">
                <p>
                    <br>
                    <span class="tx">PLAY  FIELD<br></span>
                    
                </p>
                <span id="ty" style="font-size: x-large;" >구장조회, 소셜매치, 커뮤니티 중 원하는 기능을 선택하고<br> 여러 사람과 함께 경기를 즐길 수 있습니다. </span> 
            </div>

            <div class="sport">
                <div style="height: 30px;"></div>

                <div class="soccer" style="position: absolute; top: 65%; left: 17%;">
                    <a href="${path}/search/searchList.do"><img style="opacity: 0.75; border-radius: 8%;" src="${path}/resources/img/구장조희_1.jpeg" alt=""></a>
                    <a href="${path}/search/searchList.do"><span style="color: rgba(255,255,255,.80);"><br><br>구장조회</span></a>
                </div>
                
                <div class="fotsal" style="position: absolute; top: 65%; left: 42%;">
                    <a href="${path}/match/matchList.do"><img style="opacity: 0.75; border-radius: 8%;" src="${path}/resources/img/소셜매치_1.jpg" alt=""></a>
                    <a href="${path}/match/matchList.do"><span style=" color: rgba(255,255,255,.80); "><br><br>소셜매치</span></a>
                </div>        
                
                <div class="basketball" style="position: absolute; top: 65%; left: 67%;">
                    <a href="${path}/board/boardList.do"><img style="opacity: 0.75; border-radius: 8%;" src="${path}/resources/img/커뮤니티_1.jpg" alt=""></a>
                    <a href="${path}/board/boardList.do"><span style=" color: rgba(255,255,255,.80);"><br><br>커뮤니티</span></a>
                </div>
            </div>
        </div>
    
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
    
</body>
</html>