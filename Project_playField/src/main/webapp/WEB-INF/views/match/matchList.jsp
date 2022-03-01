<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link type="text/css" href="${path}/resources/css/calendar.css" rel="stylesheet">

<div class="section section-header section-image bg-tertiary overlay-primary text-white overflow-hidden pb-9" data-background="${path}/resources/img/헤더사진_2.jpg">
    <div class="container z-2">
        <div class="row justify-content-center pt-3">
            <div class="col-12 text-center">
                <h1 class="mb-5">매칭 상세<span class="font-weight-bolder"></span></h1>
            </div>
        </div>
    </div>
</div>
<section class="section-header">
    <div class="container">
        <form>
            <div class="row justify-content-center">
                <div class="text-center">
                    <div id="calendarForm">
                    </div>
                </div>
            </div>
            <div class="row justify-content-center pt-3">
                <div class="col-12">
                    <div class="card border-light mb-4 animate-up-5">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-1">
                                    <span class="h5 text-dark font-weight-bold">시간</span>
                                </div>
                                <div class="col-sm-9">
                                    <span class="h5 text-dark font-weight-bold">장소</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card border-light mb-4 animate-up-5">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-1">
                                    <span class="h5 text-dark font-weight-bold">20:00</span>
                                </div>
                                <div class="col-sm-9">
                                    <span class="h5 text-dark font-weight-bold">은평 롯데몰 A구장</span>
                                </div>
                                <div class="col-sm-2">
                                    <button type="submit" class="btn btn-primary">신청 가능</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card border-light mb-4 animate-up-5">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-1">
                                    <span class="h5 text-dark font-weight-bold">17:00</span>
                                </div>
                                <div class="col-sm-9">
                                    <span class="h5 text-dark font-weight-bold">플랩 스타디움 수원 2구장</span>
                                </div>
                                <div class="col-sm-2">
                                    <button type="submit" class="btn btn-warning">신청 임박</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card border-light mb-4 animate-up-5">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-1">
                                    <span class="h5 text-dark font-weight-bold">23:00</span>
                                </div>
                                <div class="col-sm-9">
                                    <span class="h5 text-dark font-weight-bold">플랩 스타디움 수원 1구장</span>
                                </div>
                                <div class="col-sm-2">
                                    <button type="submit" class="btn btn-danger">신청 마감</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </form>
    </div>
</section>

<script src="${path}/resources/js/calendar.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>