<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

	<section>
        <div class="section section-lg bg-soft">
            <div class="container">
                <div class="row pt-5 pt-md-0">
                    <div class="col-12 col-md-4 d-none d-lg-block">
                        <div class="card border-light p-2">
                            <div class="card-body p-2">
                                <h2 class="h5 font-weight-normal text-center mt-3 mb-0">${loginMember.name}</h2>
                                <div class="list-group dashboard-menu list-group-sm mt-4">
                                    <a href="${path}/member/myPages1"
                                        class="d-flex list-group-item list-group-item-action  active " style="color: #C33C54;">계정정보 <span
                                            class="icon icon-xs ml-auto"><span
                                                class="fas fa-chevron-right"></span></span> </a>
                                    <a href="${path}/member/myPages2"
                                        class="d-flex list-group-item list-group-item-action ">회원정보(수정)<span
                                            class="icon icon-xs ml-auto"><span
                                                class="fas fa-chevron-right"></span></span> </a>
                                    <a href="${path}/member/myPages3"
                                        class="d-flex list-group-item list-group-item-action ">예약내역<span
                                            class="icon icon-xs ml-auto"><span
                                                class="fas fa-chevron-right"></span></span> </a>
                                    <a href="${path}/member/myPages4"
                                        class="d-flex list-group-item list-group-item-action ">즐겨찾기<span
                                            class="icon icon-xs ml-auto"><span
                                                class="fas fa-chevron-right"></span></span> </a>
                                    <a href="${path}/member/myPages5"
                                        class="d-flex list-group-item list-group-item-action ">포인트충전<span
                                            class="icon icon-xs ml-auto"><span
                                                class="fas fa-chevron-right"></span></span> </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-lg-8">
                        <div class="row">
                            <div class="col-12 col-sm-6 mb-4">
                                <div class="card border-light">
                                    <div class="card-body d-block d-md-flex align-items-center">
                                        <div
                                            class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0">
                                            <span class="fas fa-wallet"></span>
                                        </div>
                                        <div>
                                            <span class="d-block h6 font-weight-normal">
                                                신체스펙
                                            </span>
                                            <h5 class="h5 font-weight-bold mb-1">${loginMember.height}cm | ${loginMember.weight}kg</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 mb-4">
                                <div class="card border-light">
                                    <div class="card-body d-block d-md-flex align-items-center">
                                        <div
                                            class="icon icon-shape icon-md icon-shape-primary rounded-circle mr-3 mb-4 mb-md-0">
                                            <span class="fas fa-file-invoice-dollar"></span>
                                        </div>
                                        <div>
                                            <span class="d-block h6 font-weight-normal">
                                                매너점수
                                            </span>
                                            <h5 class="h5 font-weight-bold mb-1">별 5개 기준</h5>
                                            <h5 class="h5 font-weight-bold mb-1"></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 mb-4">
                                <div class="card border-light">
                                    <div class="card-body d-flex flex-row align-items-center flex-0 border-bottom">
                                        <div class="d-block">
                                            <div class="h6 font-weight-normal text-gray mb-2">개인능력치</div>
                                            <h2 class="h3">9.5 / 10</h2>
                                        </div>

                                    </div>
                                    <div id="sessions-browser" class="apex-charts mt-3" data-colors="#3688fc"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>