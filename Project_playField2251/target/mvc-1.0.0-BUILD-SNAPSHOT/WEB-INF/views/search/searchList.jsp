<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<div class="section section-header bg-tertiary overlay-primary text-white overflow-hidden pb-9" data-background="${path}/resources/img/sco.jpg">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-10 text-center">
                <br><br><br><br>
                <h1 class="mb-3">다양하고 멋진 축구장을 검색할 수 있습니다.
                </h1>
            </div>
        </div>
    </div>
</div>
<div class="section section-md pt-0">
    <div class="container mt-n7">
        <div class="row">
            <div class="col-12">
                <div class="card border-light p-md-2">
                    <div class="card-body p-4">
                        <form autocomplete="off" method="get" action="#">
                            <div class="row">
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group form-group-lg mb-lg-0">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="fa fa-search"></i></span>
                                                    </div>
                                                    <input id="search-location" type="text" class="form-control autocomplete" placeholder="Searching for stadiums" tabindex="1" required >
                                                    <div class="col-6 col-lg-4 mb-3 mb-lg-0">
                                                        <button class="btn btn-primary btn-block animate-up-2" type="submit">검색</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col-12">
                                    <div id="collapseAdvanced" class="">
                                        <div class="row">
                                            <div class="col-12 col-lg-4">
                                                <div class="input-group input-group-lg mt-3">
                                                    <select class="custom-select" id="exampleFormControlSelect1">
                                                        <option>종목</option>
                                                        <option>축구</option>
                                                        <option>풋살</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-4">
                                                <div class="input-group input-group-lg mt-3">
                                                    <select class="custom-select" id="exampleFormControlSelect2">
                                                        <option>지역</option>
                                                        <option>강남구</option>
                                                        <option>서초구</option>
                                                        <option>강북구</option>
                                                        <option>노원구</option>
                                                        <option>관악구</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-12 col-lg-4">
                                                <div class="input-group input-group-lg mt-3">
                                                    <select class="custom-select" id="exampleFormControlSelect3">
                                                        <option>인원</option>
                                                        <option>3vs3 ~ 6vs6</option>
                                                        <option>9vs9 ~ 11vs11</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="section section-lg pt-0">
    <div class="container">
        <div class="row">
            <div class="col-12 mb-5">
                <div class="tab-content mt-4 mt-lg-4" id="tabcontentexample-5">
                    <div class="tab-pane fade show active" id="link-example-14" role="tabpanel" aria-labelledby="tab-link-example-14">
                        <div class="row">
                            <div class="col-12 col-md-6 col-lg-4">
                                <!-- Card -->
                                <div class="card border-light mb-4 animate-up-5">
                                    <a href="${path}/search/searchView" class="position-relative">
                                        <img src="${path}/resources/img/손기정.jpg" class="card-img-top rounded-xl p-2" alt="themesberg office">
                                    </a>
                                    <div class="card-body">
                                        <a href="${path}/search/searchView">
                                            <h4 class="h5" style="text-align: center; margin-left: 0px;" >손기정 체육공원 인조잔디 축구장</h4>
                                        </a>
                                        <ul class="list-group mb-3">
                                            <li class="list-group-item small p-0">연락처 : 00-0000-0000</li>
                                            <li class="list-group-item small p-0">주소 : 서울특별시 중구 손기정로 101</li>
                                        </ul>
                                    </div>
                                    <div class="card-footer bg-soft border-top">
                                        <div class="d-flex justify-content-between">
                                            <div class="col pl-0">
                                                <span class="text-muted font-small d-block mb-2">hire</span>
                                                <span class="text-dark font-weight-bold">00,000￦</span>
                                            </div>
                                            <div class="col">
                                                <span class="text-muted font-small d-block mb-2">player</span>
                                                <span class="text-dark font-weight-bold">11 vs 11</span>
                                            </div>
                                            <div class="col pr-0">
                                                <span class="text-muted font-small d-block mb-2">area</span>
                                                <span class="text-dark font-weight-bold">00 x 00㎡ </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End of Card -->
                            </div>
                        </div>
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center mt-5">
                                <li class="page-item">
                                    <a class="page-link" href="#">Previous</a>
                                </li>
                                <li class="page-item active">
                                    <a class="page-link" href="#">1</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">2</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">3</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">4</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">5</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>