<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>회원가입 - 플레이필드</title>
    
    <link type="text/css" href="${path}/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link type="text/css" href="${path}/resources/vendor/leaflet/dist/leaflet.css" rel="stylesheet">
    <link rel="stylesheet" href="${path}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">
    <link rel="stylesheet" href="${path}/resources/vendor/jqvmap/dist/jqvmap.min.css">
    <link type="text/css" href="${path}/resources/css/spaces.css" rel="stylesheet">
    <script src="${path}/resources/js/jquery-3.6.0.min.js"></script>
</head>

<body>
    <section class="min-vh-100 d-flex align-items-center section-image overlay-soft-darks py-5 py-lg-0" data-background="${path}/resources/img/stadium.jpg" style="height: 1800px;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="text-center text-md-center mb-5 mt-md-0 text-white">
                        <h1 class="mb-0 h3"><a href="${path}"><img src="${path}/resources/img/logo.png" alt=""></a></h1>
                    </div>
                </div>
                <div class="col-12 d-flex align-items-center justify-content-center">
                    <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                    
                    <!-- form -->
                        <form name="signUpForm" action="${path}/member/signUp" method="post">
                        
		                    <!-- 아이디 -->
                            <div class="form-group">
                                <label for="exampleInputIcon4">아이디</label>
                                <div class="input-group mb-4">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                    </div>
                                    <input type="text" class="form-control" name="id" id="id" placeholder="아이디(5글자 초과)" style="width: 100px;" required>
                                    <input type="button" class="form-control" id="idCheck" value="중복검사">
                                </div>
                            </div>
                            <!-- 아이디 -->
                            
                            <div class="form-group">
                            
                            	<!-- 비밀번호 -->
                                <div class="form-group">
                                    <label for="password">비밀번호</label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                        </div>
                                        <input class="form-control" name="pwd" id="pwd" placeholder="비밀번호" type="password" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password_confirm">비밀번호 재확인</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                        </div>
                                        <input type="password" class="form-control" id="pwd2" placeholder="비밀번호 재입력" required>
                                    </div>
                                </div>
                                <!-- 비밀번호 -->
                                
                                <!-- 이름 -->
                                <div class="form-group">
                                    <label>이름</label>
                                    <div class="input-group mb-4">
                                        <input type="text" class="form-control" name="name" id="name" placeholder="이름" required>
                                    </div>
                                </div>
                                <!-- 이름 -->
                                
                                <!-- 닉네임 -->
                                <div class="form-group">
                                    <label>닉네임</label>
                                    <div class="input-group mb-4">
                                        <input class="form-control" name="nick" id="nick" placeholder="닉네임" type="text" required>
                                    </div>
                                </div>
                                <!-- 닉네임 -->
                                
                                <!-- 전화번호 -->
                                <div class="form-group">
                                    <label>휴대폰번호</label>
                                    <div class="input-group mb-4">
                                        <input class="form-control" name="phone" id="phone" placeholder="010-1234-5678(-제외)" type="tel" required>
                                    </div>
                                </div>
                                <!-- 전화번호 -->
                                
                                <!-- 이메일 -->
                                <div class="form-group">
                                    <label>이메일</label>
                                    <div class="input-group mb-4">
                                        <input class="form-control" name="mail" id="mail" placeholder="이메일" type="email" required>
                                    </div>
                                </div>
                                <!-- 이메일 -->
                                
                                <!-- 생년월일 -->
                                <div class="form-group">
                                    <label for="birth">생년월일</label>
                                    <div class="input-group mb-4">
                                        <input class="form-control" name="age" type="date" required>
                                    </div>
                                </div>
                                <!-- 생년월일 -->
                                
                                <!-- 신체스펙 -->
                                <div class="form-group">
                                    <label for="height">키</label>
                                    <div class="input-group mb-4">
                                        <input class="form-control" name="height" id="height" placeholder="cm" type="number" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="weight">몸무게</label>
                                    <div class="input-group mb-4">
                                        <input class="form-control" name="weight" id="weight" placeholder="kg" type="number" required>
                                    </div>
                                </div>
                                <!-- 신체스펙 -->
                                
                                <!-- 포지션 -->
                                <div class="form-group">
                                    <label>선호 포지션</label>
                                    <div class="input-group mb-4">
                                        <select name="position" id="position" class="form-control">
                                            <optgroup label="골키퍼">
                                                <option id="gk" value="GK">골키퍼</option>
                                            </optgroup>
                                            <optgroup label="수비수">
                                                <option id="fb" value="FB">풀백</option>
                                                <option id="cb" value="CB">센터백</option>
                                                <option id="wb" value="WB">윙백</option>
                                            </optgroup>
                                            <optgroup label="미드필더">
                                                <option id="cdm" value="CDM">수비형 미드필더</option>
                                                <option id="cm" value="CM">중앙 미드필더</option>
                                                <option id="cam" value="CAM">공격형 미드필더</option>
                                                <option id="rlm" value="RLM">측면 미드필더</option>
                                            </optgroup>
                                            <optgroup label="공격수">
                                                <option id="cf" value="CF">중앙 공격수</option>
                                                <option id="rlw" value="RLW">윙어</option>
                                                <option id="st" value="ST">스트라이커</option>
                                            </optgroup>
                                        </select>
                                    </div>
                                </div>
                                <!-- 포지션 -->
                                
                                <!-- 선출여부 -->
                                <div class="form-group">
                                    <label>선출여부</label>
                                    <div class="input-group mb-4">
                                        <select name="athlete" id="athlete" class="form-control">
                                                <option value="1">선출</option>
                                                <option value="2">미선출</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- 선출여부 -->
                                
                                <!-- 레벨 -->
                                <div class="form-group">
                                    <label>등급</label>
                                    <div class="input-group mb-4">
                                        <select name="levels" id="levels" class="form-control">
                                            <optgroup label="등급">
                                                <option value="1">스타터</option>
                                                <option value="2">아마추어</option>
                                                <option value="3">세미프로</option>
                                                <option value="4">프로</option>
                                            </optgroup>
                                        </select>
                                    </div>
                                </div>
                                <!-- 레벨 -->
                            </div>
                            <button type="submit" id="submit" name="submit" class="btn btn-block btn-primary">회원가입하기</button>
                        </form>
                        <!-- form -->
                        
                        <div class="mt-3 mb-4 text-center">
                            <span class="font-weight-normal">or</span>
                        </div>
                        <div class="btn-wrapper my-4 text-center">
                            <button class="btn btn-icon-only btn-pill btn-outline-light text-facebook mr-2" type="button" aria-label="facebook button" title="facebook button">
                                <span aria-hidden="true" class="fab fa-facebook-f"></span>
                            </button>
                            <button class="btn btn-icon-only btn-pill btn-outline-light text-twitter mr-2" type="button" aria-label="twitter button" title="twitter button">
                                <span aria-hidden="true" class="fab fa-twitter"></span>
                            </button>
                        </div>
                        <div class="d-block d-sm-flex justify-content-center align-items-center mt-4">
                            <span class="font-weight-normal">
                                이미 회원이십니까?
                                <a href="${path}/member/signIn" class="font-weight-bold">로그인하기</a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <script>
    	
    $(document).ready(() => {
        $("#pwd2").blur((event) => {
            let pwd1 = $("#pwd").val();
            let pwd2 = $("#pwd2").val();

            if(pwd1.trim() != pwd2.trim()) {
                alert("비밀번호를 다시 확인해 주세요");

                $("#pwd").val("");
                $(event.target).val("");
                $("#pwd").focus();
            }
        });

        $("#idCheck").on("click", () => {
            let id = $("#id").val().trim();

            if (id.length < 6) {
                alert("아이디는 6글자 이상 입력해 주세요");

                return;
            }

            $.ajax({
                type: "get",
                url: "${path}/member/idCheck",
                dataType: "json",
                data: {
                    id
                },
                success: function(data) {
                    if(data.validate === true) {
                        alert("이미 사용중인 아이디 입니다.");
                    } else {
                        alert("사용 가능한 아이디 입니다.")
                    }
                },
                error: function(e) {
                    alert(e);
                }
            });
        });
    });
    </script>

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