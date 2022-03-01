<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>



<section class="section-header section-images bg-primary pb-9 pb-lg-10 text-white overlay-primary" data-background="${path}/resources/img/Soccer-ball.jpg">
    <div class="container" >
        <div class="row justify-content-center">
            <div class="col-12 col-md-10 text-center" style="height: 50px;">
                <h1 class="mb-3">자유게시판</h1>
                <p class="lead px-lg-5 mb-5">여러 사람들과 다양한 이야기를 나눌수 있는 공간</p>
                <!-- 검색 폼 -->
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
                <!-- 검색 폼 -->
            </div>
        </div>
    </div>
</section>
<section class="section section-md bg-white">
    <div class="container">
        <div class="row justify-content-center">
        	<!-- for문 사용할 부분 -->
            <div class="col-lg-10 mb-3">
                <a href="${path}/board/boardView.do" class="card border-light animate-up-3 shadow-soft p-0 p-lg-4">     
                    <div class="card-body">
                        <h4>첫 번째 게시글</h4>
                        <div style="height: 50px;"></div>
                        <p class="lead text-gray mb-4">게시글 내용 일부</p>
                        <div class="d-flex align-items-center">
                            <div class="avatar-lg">
                                <img class="rounded-circle" src="${path}/resources/assets/img/team/profile-picture-1.jpg" alt="avatar">
                                </div>
                                <div class="small text-gray ml-3">
                                    <div><span>2일전(작성으로부터)</span></div>
                                    <div>작성자</strong></div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- for문 사용할 부분 -->
                
                <!-- 페이징 할 부분 -->
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
                <!-- 페이징 할 부분 -->
            </div>
        </div>
    </section>

    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
