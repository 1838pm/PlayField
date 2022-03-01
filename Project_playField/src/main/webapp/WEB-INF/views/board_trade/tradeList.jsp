<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>



<section class="section section-image section-header bg-primary pb-9 pb-lg-10 text-white overlay-primary" data-background="${path}/resources/img/헤더사진_3.jpg">
    <div class="container" >
        <div class="row justify-content-center">
            <div class="col-12 col-md-10 text-center" >
                <div style="height:100px"></div>
                <h1 class="mb-3">중고거래 게시판</h1>
                <br>
                <form action="#">
                    <div class="form-group bg-white shadow-soft rounded-pill mb-4 px-3 py-2">
                        <div class="row align-items-center">
                            <div class="col">
                                <div class="input-group input-group-merge shadow-none">
                                    <div class="input-group-prepend"><span class="input-group-text bg-transparent border-0"><i class="fas fa-search"></i></span></div>
                                    <input type="text" class="form-control border-0 form-control-flush shadow-none pb-2" placeholder="Search for answers..." required>
                                </div>
                            </div>
                            <div class="col-auto">
                                <button type="submit" class="btn btn-block btn-primary rounded-pill">검색</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<section class="section section-lg line-bottom-light">
<div height="100px"></div>
    <div class="container mt-n8 mt-md-n9 mt-lg-n12 z-2">
        <div class="row">
        	<!-- for문 사용할 부분 -->
            <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
                <div class="card bg-white border-light p-3 rounded">
                    <a href="${path}/board_trade/tradeView.do">
                        <img style="height: 250px;" src="http://thumbnail.10x10.co.kr/webimage/image/basic600/396/B003965484.jpg?cmd=thumb&w=400&h=400&fit=true&ws=false" class="card-img-top rounded" alt="our desk">
                    </a>
                    <div class="card-body p-0 pt-4">
                        <a href="blog-post.html" class="h4">첫 번째 물건</a>
                        <div class="d-flex align-items-center my-4">
                            <img class="avatar avatar-sm rounded-circle" src="assets/img/team/profile-picture-2.jpg" alt="Neil avatar"> 
                            <h3 class="h6 small ml-2 mb-0">작성자</h3>
                        </div>
                        <p class="mb-0">나이키 축구화 275</p>
                    </div>
                </div>
            </div>
            <!-- for문 사용할 부분 -->
            
            <!-- 페이징 처리 할 부분 -->
            <div class="d-flex justify-content-center w-100 mt-5">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#">Previous</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">1</a>
                        </li>
                        <li class="page-item active">
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
            <!-- 페이징 처리 할 부분 -->
            
        </div>
    </div>
</section>
