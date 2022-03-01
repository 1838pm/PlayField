<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
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
<section>
<div class="section section-lg bg-soft">
    <div class="container">
        <div class="row pt-5 pt-md-0">
            <div class="col-12 col-md-4 d-none d-lg-block">
				<div class="card border-light p-2">
				    <div class="card-body p-2">
				        <h2 class="h5 font-weight-normal text-center mt-3 mb-0">${loginMember.name}</h2>
				        <div class="list-group dashboard-menu list-group-sm mt-4">
				            <a href="${path}/member/myPages1" class="d-flex list-group-item list-group-item-action  active ">계정정보 <span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				            <a href="${path}/member/myPages2" class="d-flex list-group-item list-group-item-action ">회원정보(수정)<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				            <a href="${path}/member/myPages3" class="d-flex list-group-item list-group-item-action ">예약내역<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				            <a href="${path}/member/myPages4" class="d-flex list-group-item list-group-item-action " style="color: #C33C54;">즐겨찾기<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				            <a href="${path}/member/myPages5" class="d-flex list-group-item list-group-item-action ">포인트충전<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				            </div>
				        </div>
				    </div>
				</div>
                    <div class="col-12 col-lg-8">
                        <div class="d-flex align-items-center mb-3">
                            <h1 class="h5 mb-3">즐겨찾기</h1>
                        </div>
                        <div class="card border-light mb-3 py-3">
                            <div class="card-body d-flex align-items-center flex-wrap flex-lg-nowrap py-0">
                                <div class="col-auto col-lg-1 d-flex align-items-center px-0">
                                    <div class="form-check inbox-check mr-2">
                                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck1"> 
                                        <label class="form-check-label" for="defaultCheck1"></label>
                                    </div>
                                    <div class="rating-star d-none d-sm-inline-block">
                                        <input type="checkbox" id="InboxStar1" name="star"> 
                                        <label class="rating-star-label" for="InboxStar1">
                                            <span class="sr-only">Star</span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-8 pl-0 ml-2">
                                    <a href="./single-message.html" class="h6 text-sm">손기정 축구장</a>
                                </div>
                                <div class="col col-lg-1 text-right px-0 order-lg-4">
                                    <span class="text-muted text-sm">예약</span>
                                </div>
                                <div class="col-12 col-lg-7 d-flex align-items-center px-0">
                                    <div class="col col-lg-11 px-0">
                                        <div class="d-flex flex-wrap flex-lg-nowrap align-items-center">
                                            <a href="./single-message.html" class="col-12 col-lg pl-0 font-weight-normal text-dark d-none d-sm-block mt-2 mt-lg-0">
                                                구장 주소 적어주기 
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <div class="mt-3">
                        <button type="submit" class="btn btn-primary">삭제하기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>