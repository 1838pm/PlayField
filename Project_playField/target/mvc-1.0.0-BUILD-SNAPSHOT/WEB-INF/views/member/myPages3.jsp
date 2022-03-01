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
	                                class="d-flex list-group-item list-group-item-action  active ">계정정보<span class="icon icon-xs ml-auto"><span
	                                        class="fas fa-chevron-right"></span></span> </a>
	                            <a href="${path}/member/myPages2"
	                                class="d-flex list-group-item list-group-item-action ">회원정보(수정)<span class="icon icon-xs ml-auto"><span
	                                        class="fas fa-chevron-right"></span></span> </a>
	                            <a href="${path}/member/myPages3"
	                                class="d-flex list-group-item list-group-item-action " style="color: #C33C54;">예약내역<span class="icon icon-xs ml-auto"><span
	                                        class="fas fa-chevron-right"></span></span> </a>
	                            <a href="${path}/member/myPages4"
	                                class="d-flex list-group-item list-group-item-action ">즐겨찾기<span class="icon icon-xs ml-auto"><span
	                                        class="fas fa-chevron-right"></span></span> </a>
	                            <a href="${path}/member/myPages5"
	                                class="d-flex list-group-item list-group-item-action ">포인트충전<span class="icon icon-xs ml-auto"><span
	                                        class="fas fa-chevron-right"></span></span> </a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="col-12 col-lg-8">
	                <div class="d-flex align-items-center mb-3">
	                    <h1 class="h5 mb-3">예약내역</h1>
	                </div>
	                <div class="card border-light mb-4">
	                    <div class="row no-gutters align-items-center">
	                        <div class="col-12 col-lg-6 col-xl-4">
	                            <a href="">
	                                <img src="${path}/resources/img/손기정.jpg" class="card-img p-2 rounded-xl">
	                            </a>
	                        </div>
	                        <div class="col-12 col-lg-6 col-xl-8">
	                            <div class="card-body py-lg-0">
	                                <div class="d-flex no-gutters align-items-center mb-3">
	                                    <div class="col text-left">
	                                        <div class="modal fade bd-example-modal-lg" id="modal-notification"
	                                            tabindex="-1" role="dialog" aria-labelledby="modal-notification"
	                                            aria-hidden="true">
	                                            <div class="modal-dialog modal-dialog-centered modal-lg"
	                                                role="document">
	                                                <div class="modal-content bg-white px-0">
	                                                    <div class="modal-header">
	                                                        <h2 class="h5 mb-3">손기정 축구장</h2>
	                                                        <button type="button" class="close" data-dismiss="modal"
	                                                            aria-label="Close">
	                                                            <span aria-hidden="true">×</span>
	                                                        </button>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <a href="">
	                                    <h2 class="h5">손기정 축구장</h2>
	                                </a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	        </div>
	    </div>
	    </div>
	</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>