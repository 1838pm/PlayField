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
				             <a href="${path}/member/myPages1" class="d-flex list-group-item list-group-item-action  active ">계정정보 <span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				             <a href="${path}/member/myPages2" class="d-flex list-group-item list-group-item-action ">회원정보(수정)<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				             <a href="${path}/member/myPages3" class="d-flex list-group-item list-group-item-action ">예약내역<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				             <a href="${path}/member/myPages4" class="d-flex list-group-item list-group-item-action ">즐겨찾기<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				             <a href="${path}/member/myPages5" class="d-flex list-group-item list-group-item-action " style="color: #C33C54;">포인트충전<span class="icon icon-xs ml-auto"><span class="fas fa-chevron-right"></span></span> </a>
				            </div>
				        </div>
				    </div>
				</div>
               <div class="col-12 col-lg-8">
                   <div class="row mb-5">
                       <div class="col-12 mb-4">
                           <form action="#" method="post" class="card border-light p-3 mb-4">
                               <div class="card-header border-light p-3 mb-4 mb-md-0">
                                   <h3 class="h5 mb-0">카드 세부정보</h3> 
                               </div>
                               <div class="card-body p-0 p-md-4">
                                   <div class="row justify-content-center">
                                       <div class="col-12">
                                           <div class="form-group">
                                               <div class="input-group mb-4">
                                                   <input class="form-control" id="cardNameLabel" placeholder="카드 이름" type="text" required=""> </div>
                                           </div>
                                       </div>
                                       <div class="col-12">
                                           <div class="form-group">
                                               <label for="cardNumberLabel">카드 번호<span class="text-danger">*</span></label>
                                               <div class="input-group mb-4">
                                                   <div class="input-group-prepend"> <span class="input-group-text"><span class="fas fa-credit-card"></span></span> </div>
                                                   <input class="form-control" id="cardNumberLabel" placeholder="0000 0000 0000 0000" type="number" required=""> </div>
                                           </div>
                                       </div>
                                       <div class="col-12 col-md-6">
                                           <div class="form-group">
                                               <label for="cardCVCLabel">CVC <span class="text-danger">*</span></label>
                                               <input class="form-control" id="cardCVCLabel" placeholder="CVC" type="number" required=""> </div>
                                       </div>
                                       <div class="col-12 col-md-6">
                                           <div class="form-group">
                                               <label for="cardExpiryLabel">카드 만료<span class="text-danger">*</span></label>
                                               <div class="input-group mb-4">
                                                   <div class="input-group-prepend"> <span class="input-group-text"><span class="fas fa-calendar-alt"></span></span> </div>
                                                   <input class="form-control" name="age" type="date" placeholder="mm/yy">
                                           </div>
                                       </div>
                                       <div class="col-12">
                                           <button class="btn btn-primary btn-dark mt-2 animate-up-2" type="submit">저장하기</button>
                                       </div>
                                   </div>
                               </div>
                           </div>
                           </form> 
                           <br><br><br><br>
                           <div class="card card-body bg-white border-light p-0 p-md-4">
                               <div class="card-header border-bottom p-3">
                                   <h3 class="h5">주문 내역</h3>
                               </div>
                               <div class="card-body px-0 pt-0">
                                   <ul class="list-group">
                                       <li class="list-group-item border-bottom">
                                           <div class="row align-items-center">
                                               <div class="col">                       
                                                   <h3 class="h6 mb-1">
                                                       <a href="">손기정 축구장</a>
                                                   </h3>
                                            </div>
                                            <div class="col-auto">
                                                <button class="btn btn-xs btn-outline-dark">
                                                    Pay now
                                                </button>
                                            </div>
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
</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>