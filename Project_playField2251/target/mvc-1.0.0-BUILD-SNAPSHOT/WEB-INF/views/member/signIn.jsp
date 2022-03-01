<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="KO">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>로그인 - 플레이필드</title>
    
    <link type="text/css" href="${path}/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link type="text/css" href="${path}/resources/vendor/leaflet/dist/leaflet.css" rel="stylesheet">
    <link rel="stylesheet" href="${path}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">
    <link rel="stylesheet" href="${path}/resources/vendor/jqvmap/dist/jqvmap.min.css">
    <link type="text/css" href="${path}/resources/css/spaces.css" rel="stylesheet">
</head>

<body>
    <section class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark py-5 py-lg-0" data-background="${path}/resources/img/stadium.jpg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="text-center text-md-center mb-5 mt-md-0 text-white">
                        <h1 class="mb-0 h3"><a href="${path}"><img src="${path}/resources/img/logo.png" alt=""></a></h1>
                    </div>
                </div>
                <div class="col-12 d-flex align-items-center justify-content-center">
                    <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                        <form action="#">
                            <!-- Form -->
                            <div class="form-group">
                                <label for="email">아이디</label>
                                <div class="input-group mb-4">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                    </div>
                                    <input class="form-control" id="email" placeholder="email" type="text" aria-label="ID">
                                </div>
                            </div>
                            <!-- End of Form -->
                            <div class="form-group">
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="password">비밀번호</label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                        </div>
                                        <input class="form-control" id="password" placeholder="Password" type="password" aria-label="Password" required>
                                    </div>
                                </div>
                                <!-- End of Form -->
                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="remember">
                                        <label class="form-check-label" for="remember">
                                            기억하기
                                        </label>
                                    </div>
                                    <div><a href="${path}" class="small text-right">비밀번호를 잊으셨습니까?</a></div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-block btn-primary">로그인</button>
                        </form>
                        <!-- 로그인 아이콘  -->
                        <div class="btn-wrapper my-4 text-center">
                            <button class="btn btn-icon-only btn-pill btn-outline-light text-facebook mr-2" type="button" aria-label="facebook button" title="facebook button">
                                <span aria-hidden="true" class="fab fa-facebook-f"></span>
                            </button>
                            <button class="btn btn-icon-only btn-pill btn-outline-light text-twitter mr-2" type="button" aria-label="twitter button" title="twitter button">
                                <span aria-hidden="true" class="fab fa-twitter"></span>
                            </button>
                        </div>
                        <!--  -->
                        <div class="d-block d-sm-flex justify-content-center align-items-center mt-4">
                            <span class="font-weight-normal">
                                회원이 아니신가요?
                                <a href="${path}/member/signUp" class="font-weight-bold">회원가입</a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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