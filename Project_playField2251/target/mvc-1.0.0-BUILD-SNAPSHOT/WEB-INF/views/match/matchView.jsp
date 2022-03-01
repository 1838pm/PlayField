<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>플레이필드</title>

<link type="text/css" href="${path}/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
<link type="text/css" href="${path}/resources/vendor/leaflet/dist/leaflet.css" rel="stylesheet">
<link rel="stylesheet" href="${path}/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">
<link rel="stylesheet" href="${path}/resources/vendor/jqvmap/dist/jqvmap.min.css">
<link type="text/css" href="${path}/resources/css/spaces.css" rel="stylesheet">
<link rel="stylesheet" href="${path}/resources/css/slide.css">

</head>
<style>
	.navbar-main {
	background: black;
	}
	
	.navigation__items li {
        font-size: 15px;
        margin-right: 30px;
        margin-top: 20px;
        line-height: 2.5;
    }
</style>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<body>
    <main>
        <div id="slide">
            <input type="radio" name="pos" id="pos1" checked>
            <input type="radio" name="pos" id="pos2">
            <input type="radio" name="pos" id="pos3">
            <input type="radio" name="pos" id="pos4">
            <ul>
              <li><a href=""><img src="${path}/resources/img/madeul_Stadium.jpg" alt=""></a></li>
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
        <!-- End of Hero section -->
        <div class="section pt-lg-0">
            <div id="spaces-container" class="container">
                <div class="row">
                    <aside class="col-12 col-lg-4 d-block z-10">
                        <div id="profile-sidebar">
                            <div class="sidebar-inner">
                                <!-- Profile Card -->
                                <div class="card mt-n7 d-none d-lg-block border-light text-center p-2">
                                    
                                    <div class="profile-cover rounded-top" data-background="" style="margin-bottom: -20px;">
                                        <h5>2022년 02월 14일 22:00</h5>
                                        <a class="font-match" href="#"><h5 class="font-match-h5">마들 스타디움</h5></a>
                                        <h6 style="font-size: 15px;">서울 노원구 상계동 770-2</h6>
                                        <h6 style="font-size: 12px;">주소 복사</h6>
                                        <h6 style="font-size: 12px;">지도 보기</h6>
                                        <br>
                                        10,000원 | 2시간
                                        <br>
                                        <br>
                                        <div>
                                        	<select name="position" id="position" class="form-control">
                                            <optgroup label="골키퍼">
                                                <option id="gk" value="GK">A팀</option>
                                            </optgroup>
                                            <optgroup label="골키퍼">
                                                <option id="gk" value="GK">B팀</option>
                                            </optgroup>
	                                        </select>
                                            
                                        	<select name="" id="" class="form-control">
                                            <optgroup label="골키퍼">
                                                <option id="gk" value="GK">공격</option>
                                            </optgroup>
                                            <optgroup label="골키퍼">
                                                <option id="gk" value="GK">미드</option>
                                            </optgroup>
	                                        </select>
                                           
                                        </div>
                                        <a class="btn btn-sm btn-secondary mb-3" href="#">
                                            신청하기
                                        </a>

                                    </div>
                                    <div class="card-body p-2">
                                        <div class="profile-thumbnail small-thumbnail mt-n6 mx-auto">
                                        </div>
                                        <div class="profile-thumbnail small-thumbnail mt-n6 mx-auto">
                                        </div>
                                    </div>
                                </div>
                                <!-- End of Profile Card -->
                            </div>
                        </div>
                        
                    </aside>
                    <div class="col-12 col-lg-8">
                    <!--   <nav id="mnnav" class="navigation">
                            <ul class="navigation__items">
                                <li>
                                    <a href="#mnRule" class="navigation__items">진행방식</a>
                                </li>
                                <li>
                                    <a href="#mnRule" class="navigation__items">구장시설</a>
                                </li>
                                <li>
                                    <a href="#mnRule" class="navigation__items">매치안내</a>
                                </li>
                                <li>
                                    <a href="#mnRule" class="navigation__items">환급규정</a>
                                </li>
                            </ul>
                        </nav>
                    -->
                    <nav class="navigation" id="mnNav">
                        <ul class="navigation__items">
                          <li><a href="#mnRule" class="navigation__item">진행 방식</a></li>
                          <li><a href="#mnFeature" class="navigation__item">구장 시설</a></li>
                          <li><a href="#mnCaution" class="navigation__item">매치 안내</a></li>
                          <li><a href="#mnTerm" class="navigation__item">환급 규정</a></li>
                        </ul>
                      </nav>
 
                      
                    
                      <section class="section" id="mnRule">
                      <div>
                      	A팀 : 수비 2/4명 미드필더 1/4명 2/2 명<br>
                      	B팀 : 수비 2/4명 미드필더 1/4명 2/2 명
                      </div>
                      <br>
                      
                        <div class="section__title">
                          <h6>진행 방식</h6>
                        </div>
                        <div class="matchFeature">
                          <ul>
                            <li>
                              <img src="https://plab-football.s3.amazonaws.com/static/img/ic_6vs6.svg" alt="6vs6 매치">
                              <span class="txt2">6vs6 매치</span>
                            </li>
                            <li>
                              <img src="https://plab-football.s3.amazonaws.com/static/img/ic_male.svg" alt="남자매치">
                              <span class="txt2">남자매치</span>
                            </li>
                            <li>
                              <img src="https://plab-football.s3.amazonaws.com/static/img/ic_every.svg" alt="일반">
                              <span class="txt2">일반</span>
                            </li>
                            <li>
                              <img src="https://plab-football.s3.amazonaws.com/static/img/ic_turf.svg" alt="풋살화">
                              <span class="txt2">풋살화</span>
                            </li>
                            <li>
                              <img src="https://plab-football.s3.amazonaws.com/static/img/ic_minmax.svg" alt="10~14명">
                              <span class="txt2">10~14명</span>
                            </li>
                          </ul>
                        </div>
                        <div class="stadInner">
                          <ul class="matchRule">
                            
                                <li>일반 매치는 실력에 상관없이 누구나 참여하실 수 있습니다</li>
                            
                          </ul>
                        </div>
                      </section>
                    
                      <section class="section" id="mnFeature">
                        <div class="section__title">
                          <h5>구장 시설</h5>
                        </div>
                        <div class="matchFeature">
                          <ul>
                            <li>
                              <img src="https://plab-football.s3.amazonaws.com/static/img/ic_size.svg" alt="경기장 크기">
                              <span class="txt2">31x20m</span>
                            </li>
                            <li class="noFeature">
                              <img src="https://plab-football.s3.amazonaws.com/static/img/ic_shower.svg" alt="샤워장">
                              <span class="txt2">샤워장</span>
                              
                            </li>
                            <li class="noFeature">
              
                              
                                <img src="https://plab-football.s3.amazonaws.com/static/img/ic_parking.svg" alt="주차장">
                                <span class="txt2">주차장</span>
                              
                              
                            </li>
                            <li class="noFeature">
                              <img src="https://plab-football.s3.amazonaws.com/static/img/ic_rentalshoes.svg" alt="풋살화 대여">
                              <span class="txt2">풋살화 대여</span>
                            </li>
                            <li class="noFeature">
                              <img src="https://plab-football.s3.amazonaws.com/static/img/ic_rentalwear.svg"alt="운동복 대여">
                              <span class="txt2">운동복 대여</span>
                            </li>
                          </ul>
                        </div>
                        <div class="match-detail__notice corona19-shower">
                          <h5>🚫샤워실 이용 중단</h5>
                          <p>코로나19로 인해 샤워장을 개방하지 않고 있습니다</p>
                        </div>
                        <div class="stadInner">
                          <div class="matchRule">
                            <h6>구장 특이사항</h6>
                            <pre class="txt2">★★★주의사항★★★
              입장 전 QR인증 시 코로나 접종 정보와 다른 인원은 입장이 불가능 합니다. 
              QR인증 시 백신 접종 여부를 확인할 수 있도록 백신 접종 정보 연동을 사전에 해주세요.
              
              ◈플랩 모든 매치는 현재 매치 중, 휴식 및 이동 시 마스크 필수 착용입니다◈
              
              ■풋살장 가는 길
              - 대중교통 이용 시: 용산역 2번 출구 나와서 오른쪽 아디다스더베이스 엘리베이터 이용
              - 자차 이용 시: 해 주차장 이용
              
              ■주차
              - 주차 등록은 전일 15시 이후 변경 및 신청 불가
              (주차 신청 후 출차 시 요금이 발생한 경우에는 주차비 영수증 챙기셔야 환불이 가능합니다.)
              
              - 연타임 이용 시에도 3시간까지만 무료
              - 선착순 2대만 무료 가능
              
              ■흡연: 흡연구역(9층 흡연장) 외 절대 금연
              (흡연구역 외에서 흡연 적발 시 이후 서비스 이용에 제재가 있을 수 있습니다.) 
              
              ■풋살화 대여: 현재 코로나19 이슈로 인해 중단 되었습니다
              
              ■기타
              - 코로나로 인하여 풋살장 외 장소 이동 시 마스크를 필히 착용하셔야 하며 미이행 시 CCTV 확인 후 추후 이용에 불이익이 발생할 수 있습니다.
              - 별도 안내 시까지 탈의실, 샤워실 이용불가
              - 모든 경기장과 샤워실 내 애완동물의 출입은 절대 금지이며, 적발 시 퇴출 조치 됩니다.</pre>
                          </div>
                          <!-- <span class="contentAnchor">더 자세한 정보는 <a href="/stadium/27/info/">용산 아이파크몰 (5구장/뮌헨)의 시설 정보</a>에서 확인하세요</span> -->
                        </div>
                      </section>
              
                      <section class="section" id="mnCaution">
                        <div class="section__title">
                          <h5>매치 안내</h5>
                        </div>
                        <div class="stadInner">
                          <ul class="matchRule">
                            <h6>일반</h6>
                            <li>매치 시작 1시간 30분 전까지 최소 인원(10명) 미달 시 매치가 취소 됩니다. 취소 시 카카오톡을 통해 안내드리며 캐시는 전액 환급됩니다.</li>
                          </ul>
                          <ul class="matchRule">
                            <h6>특수 (우천)</h6>
                            <li>전날 기준 기상청 날씨누리 기준 해당 지역 1mm 이상의 예보가 있는 경우 매치 당일 00시 부터 환급 기준이 변경 됩니다.</li>
                            <li>인원이 모집되는 경우 우천 시에도 진행됩니다.</li>
                            <li>진행이 확정되었지만 매치 진행에 변동이 있을 경우 매치 시작 1시간 전까지 안내드립니다.</li>
                            <li>매치 시작 1시간 30분 전까지 취소하지 않고 불참하면 페어플레이 포인트가 차감되어 향후 이용에 제한이 있습니다. </li>
                            <li>매치 중 플레이가 어려울 정도로 비가 오는 경우에는 현장에서 매니저 판단하에 종료 될 수 있으며, 진행되지 않은 시간만큼 부분 환급 처리됩니다.</li>
                            <!--<li><strong>기상청 예보 없는 게릴라성 호우로 인한 취소 희망시 카카오톡 채널 '플랩풋볼'을 통해 문의 바랍니다.</strong></li>-->
                          </ul>
                        </div>
                      </section>
                      <section class="section" id="mnTerm">
                        <div class="section__title">
                          <h5>환급 규정</h5>
                        </div>
                        <div class="stadInner">
                          <ul class="matchRule">
                            <h6>일반</h6>
                            <li>매치 시간 기준 (ex.20:00)</li>
                            <li>2일 전 취소 시: 전액 환급</li>
                            <li>1일 전 취소 시: 80% 환급</li>
                            <li>당일 1시간 30분 전까지 취소 시: 20% 환급 (ex. ~18:30)</li>
                            <li>당일 1시간 30분 미만 취소 시: 0% (ex.18:30~20:00)</li>
                            <p><strong>취소하지 않고 불참시 페어플레이 포인트가 차감되어 향후 이용에 제한이 있습니다.</strong></p>
                          </ul>
                          <ul class="matchRule">
                            <h6>특수 (우천)</h6>
                            <li>매치 시간 기준 (ex.20:00)</li>
                            <li>당일 00시부터 1시간 30분 전까지 취소 시 : 100% 환급 (ex. ~18:30)</li>
                            <li>당일 1시간 30분 미만 취소 시 : 0% (ex.18:30~20:00)</li>
                            <p><strong>취소하지 않고 불참시 페어플레이 포인트가 차감되어 향후 이용에 제한이 있습니다.</strong></p>
                          </ul>
                        </div>
                      </section>
              
                      
    </main>
    <!-- Core -->
<script src="./vendor/jquery/dist/jquery.min.js"></script>
<script src="./vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="./vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="./vendor/headroom.js/dist/headroom.min.js"></script>
<script src="./vendor/onscreen/dist/on-screen.umd.min.js"></script>

<!-- NoUISlider -->
<script src="./vendor/nouislider/distribute/nouislider.min.js"></script>

<!-- Bootstrap Datepicker -->
<script src="./vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<!-- jQuery Waypoints -->
<script src="./vendor/waypoints/lib/jquery.waypoints.min.js"></script>

<!-- Owl acrousel -->
<script src="./vendor/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Smooth scroll -->
<script src="./vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

<!-- Fancybox -->
<script src="./vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js"></script>

<!-- Sticky sidebar -->
<script src="./vendor/sticky-sidebar/dist/sticky-sidebar.min.js"></script>

<!-- Mapbox & Leaflet.js -->
<script src="./vendor/leaflet/dist/leaflet.js"></script>

<!-- Chartist -->
<script src="./vendor/chartist/dist/chartist.min.js"></script>
<script src="./vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

<!-- Vector Maps -->
<script src="./vendor/jqvmap/dist/jquery.vmap.min.js"></script>
<script src="./vendor/jqvmap/dist/maps/jquery.vmap.usa.js"></script>

<!-- Sliderform -->
<script src="./assets/js/jquery.slideform.js"></script>

<!-- Spaces custom Javascript -->
<script src="./assets/js/spaces.js"></script>

<script>
goPlabLevel()
{ window.open("/magazine/1/")
}
</script>


</body>

</html>

				<jsp:include page="/WEB-INF/views/common/footer.jsp" />