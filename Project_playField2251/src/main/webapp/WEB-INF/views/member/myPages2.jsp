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
				             <a href="${path}/member/myPages2" class="d-flex list-group-item list-group-item-action " style="color: #C33C54;">회원정보(수정)<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				             <a href="${path}/member/myPages3" class="d-flex list-group-item list-group-item-action ">예약내역<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				             <a href="${path}/member/myPages4" class="d-flex list-group-item list-group-item-action ">즐겨찾기<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				             <a href="${path}/member/myPages5" class="d-flex list-group-item list-group-item-action ">포인트충전<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				            </div>
				        </div>
				    </div>
				</div>
                <div class="col-12 col-lg-8">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-body bg-white border-light mb-4">
                                <h2 class="h5 mb-4">회원정보</h2>
                                <form>
                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <div class="form-group">
                                                <label for="name">이름</label>
                                                <input class="form-control" name="name" id="name" type="text" placeholder="${loginMember.name}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row align-items-center">
                                        <div class="col-md-6 mb-3">
                                            <div class="form-group">
                                                <label for="birthday">생년월일</label>
                                                <input class="form-control" name="age" type="date" placeholder="${loginMember.age}">
                                                </div>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <div class="form-group">
                                                <label for="gender">닉네임</label>
                                                <input class="form-control" name="nick" id="nick" type="text" placeholder="${loginMember.nick}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <div class="form-group">
                                                <label for="email">이메일</label>
                                                <input class="form-control" name="mail" type="email" placeholder="${loginMember.mail}">
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <div class="form-group">
                                                <label for="phone">휴대폰번호</label>
                                                <input class="form-control" name="phone" type="tel" placeholder="${loginMember.phone}">
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <div class="form-group">
                                                <label for="position">포지션</label>
                                                <select class="custom-select" id="position">
                                                    <option disabled="disabled" selected="selected">${loginMember.position}</option>
                                                    <option value="1">FW</option>
                                                    <option value="2">MF</option>
                                                    <option value="3">DF</option>
                                                    <option value="4">GK</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <div class="form-group">
                                                <label for="physical">몸무게</label>
                                                <input class="form-control" name="weight" type="number" placeholder="${loginMember.weight}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-3">
                                        <button type="submit" class="btn btn-primary">저장하기</button>
                                    </div>
                                </form>
                            </div>
                            <div class="card card-body bg-white border-light">
                                <h2 class="h5 mb-4">정보 수신 여부</h2>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item d-flex justify-content-between pl-0 border-bottom">
                                        <div>
                                            <h3 class="h6 mb-1">매칭 정보 알림</h3>
                                            <span class="small">매칭 정보에 대한 알림을 수신하시겠습니까?</span>
                                        </div>
                                        <div>
                                            <div class="custom-control custom-switch"><input type="checkbox" class="custom-control-input" id="shop-notification-1" checked="checked"> <label class="custom-control-label" for="shop-notification-1"></label></div>
                                        </div>
                                    </li>
                                </ul>
                             </div>
                        </div>
                    </div>
                </div>
               </div>
           </div>
       </div>
</section>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>	