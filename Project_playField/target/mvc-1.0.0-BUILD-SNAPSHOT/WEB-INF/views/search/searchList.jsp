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
                    
                        <form action="${path}/search/searchList" method="get">
                            <div class="row">
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group form-group-lg mb-lg-0">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="fa fa-search"></i></span>
                                                    </div>
                                                    <input id="search-location" name="searchValue" type="text" class="form-control autocomplete" placeholder="구장 검색" tabindex="1">
                                                    <div class="col-6 col-lg-4 mb-3 mb-lg-0">
                                                        <button class="btn btn-primary btn-block animate-up-2" type="submit">검색</button>
                                                    </div>
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
                    
                    	<c:if test="${list == null}">
                    		<div class="row">
                            	<div class="col-12 col-md-6 col-lg-4">
                            		조회된 경기장이 없습니다.
                            	</div>
                            </div>
                    	</c:if>
                    	
		                        <div class="row" style="display: flex;">
			                    	<c:if test="${list != null}">
			                    		<c:forEach var="ground" items="${list}">
		                            <div class="col-12 col-md-6 col-lg-4" style="height: 500px;">
		                                <div class="card border-light mb-4 animate-up-5">
		                                    <a href="${path}/search/searchView.do" class="position-relative" style="display: flex;">
		                                        <img src="<c:out value="${ground.g_imgurl}"/>" class="card-img-top rounded-xl p-2" alt="themesberg office" >
		                                    </a>
		                                    <div class="card-body">
		                                        <a href="${path}/search/searchView.do">
		                                            <h4 class="h5" style="text-align: center; margin-left: 0px;" ><c:out value="${ground.g_placenm}"/></h4>
		                                        </a>
		                                        <ul class="list-group mb-3">
		                                            <li class="list-group-item small p-0">연락처 : <c:out value="${ground.g_tel}"/></li>
		                                        </ul>
		                                    </div>
		                                    <div class="card-footer bg-soft border-top">
		                                        <div class="d-flex justify-content-between">
		                                            <div class="col pl-0">
		                                                <span class="text-muted font-small d-block mb-2">결제방법</span>
		                                                <span class="text-dark font-weight-bold"><c:out value="${ground.g_pay}"/></span>
		                                            </div>
		                                             <div class="col pr-0">
		                                                <span class="text-muted font-small d-block mb-2">지역</span>
		                                                <span class="text-dark font-weight-bold"><c:out value="${ground.g_areanm}"/></span>
		                                            </div>
		                                            <div class="col">
		                                                <span class="text-muted font-small d-block mb-2">이용시간</span>
		                                                <span class="text-dark font-weight-bold"><c:out value="${ground.g_start}"/> ~<br><c:out value="${ground.g_end}"/></span>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
				                        </c:forEach>
			                        </c:if>
		                        </div>
                        
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center mt-5">
                            	<!-- 이전 페이지 -->
                                <li class="page-item">
                                    <button onclick="location.href='${path}/search/searchList?page=${pageInfo.prvePage}'" class="page-link" href="#">Previous</button>
                                </li>
                                
                                <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
	                                <c:if test="${pageInfo.currentPage == status.current}">
		                                <li class="page-item active">
		                                    <button class="page-link" disabled="disabled"><c:out value="${status.current}"/></button>
		                                </li>
	                                </c:if>
	                                <c:if test="${pageInfo.currentPage != status.current}">
		                                <li class="page-item">
		                                    <button class="page-link" onclick="location.href='${path}/search/searchList?page=${status.current}'">
		                                    	<c:out value="${status.current}"/>
		                                    </button>
		                                </li>
	                                </c:if>
                                </c:forEach>
                                
                                <!-- 다음 페이지 -->
                                <li class="page-item">
                                    <button onclick="location.href='${path}/search/searchList?page=${pageInfo.nextPage}'" class="page-link">Next</button>
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