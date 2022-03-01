<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
	.label-style {
		margin-left: 20px;
		color: white;
	}
			section#board-list-container{width:600px; margin:0 auto; text-align:center;}
		section#board-list-container h2{margin:10px 0;}
		table#tbl-board{width:100%; margin:0 auto; border:1px solid black; border-collapse:collapse; clear:both; }
		table#tbl-board th, table#tbl-board td {border:1px solid; padding: 5px 0; text-align:center;} 
		/*글쓰기버튼*/
		input#btn-add{float:right; margin: 0 0 15px;}
		/*페이지바*/
		div#pageBar{margin-top:10px; text-align:center; background-color:rgba(0, 188, 212, 0.3);}
		  .blue_window {
            display: inline-block;
            width: 366px;
            border: 3px solid #6ccaf5;
        }
        
        .input_text {
            width: calc( 100% - 14px);
            margin: 6px 7px;
            border: 0;
            font-weight: bold;
            font-size: 16px;
            outline: none;
        }
        
        .sch_smit {
            width: 54px;
            height: 40px;
            margin: 0;
            border: 0;
            vertical-align: top;
            background: #007dd1;
            color: white;
            font-weight: bold;
            border-radius: 1px;
            cursor: pointer;
        }
        
        .sch_smit:hover {
            background: #007dd1;
        }
</style>


<section
	class="section-header section-images bg-primary pb-9 pb-lg-10 text-white overlay-primary"
	data-background="${path}/resources/img/Soccer-ball.jpg">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-10 text-center" style="height: 50px;">
				<h1 class="mb-3">자유게시판</h1>
				<p class="lead px-lg-5 mb-5">여러 사람들과 다양한 이야기를 나눌수 있는 공간</p>
				<!-- 검색 폼 -->
				<form action="#">
				<!-- 조건 선택 div -->
				<div style="text-align: right; margin-right: 25px; margin-bottom:10px;">
	                <label class="label-style"><input type="radio" name="searchType" value="title" checked="checked">제목</label>
	                <label class="label-style"><input type="radio" name="searchType" value="content" >내용</label>
	                <label class="label-style"><input type="radio" name="searchType" value="writerId">작성자</label>
                	<c:if test="${ loginMember != null }">
						<button type="button" id="btn-add" style="margin-left:20px;"
							onclick="location.href='${ path }/board/boardWrite'" class="btn btn-md btn-secondary animate-up-2" style="background-color: #0d1b48;">글쓰기
						</button>
					</c:if>
                </div>
                <!-- 조건 선택 div 종료-->
                
					<div
						class="form-group bg-white shadow-soft rounded-pill mb-4 px-3 py-2">
						<div class="row align-items-center" >
							<div class="col">
								<div class="input-group input-group-merge shadow-none">
									<div class="input-group-prepend">
										<span class="input-group-text bg-transparent border-0"><i
											class="fas fa-search"></i></span>
									</div>
									<input name="searchValue" type="text"
										class="form-control border-0 form-control-flush shadow-none pb-2"
										placeholder="" required>
								</div>
							</div>
							<div class="col-auto">
								<button type="submit"
									class="btn btn-block btn-primary rounded-pill">검색</button>
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
			<table class="col-lg-10 mb-3" id="tbl-board">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>첨부파일</th>
					<th>조회수</th>
				</tr>
				<c:if test="${ list == null }" >
					<tr>
						<td colspan="6">조회된 게시글이 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${ list != null }">
					<c:forEach var="board" items="${ list }">
						<tr>
							<td><c:out value="${ board.no }" /></td>
							<td><a href="${ path }/board/boardView?no=${board.no}" > <c:out
										value="${ board.title }" />
							</a></td>
							<td><c:out value="${ board.writerId }" /></td>
							<td><fmt:formatDate type="date"
									value="${ board.createDate }" /></td>
							<td><c:if test="${ board.originalFileName != null }">
									<img src="${ path }/images/file.png" width="20" height="20" />
								</c:if> <c:if test="${ board.originalFileName == null }">
									<span> - </span>
								</c:if></td>
							<td><c:out value="${ board.readCount }" /></td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
			<!-- for문 사용할 부분 -->
			

			<!-- 페이징 할 부분 -->
			<div class="d-flex justify-content-center w-100 mt-5">
				<nav aria-label="Page navigation example">
					<div id="d-flex justify-content-center w-100 mt-5">
						<!-- 맨 처음으로 -->
						<ul class="pagination">
							<li class="page-item"><button class="page-link"
									onclick="location.href='${ path }/board/boardList?page=1'">&lt;&lt;</button></li>

							<!-- 이전 페이지로 -->
							<li class="page-item"><button class="page-link"
									onclick="location.href='${ path }/board/boardList?page=${ pageInfo.prvePage }'">&lt;</button></li>

							<!--  10개 페이지 목록 -->
							<c:forEach begin="${ pageInfo.startPage }"
								end="${ pageInfo.endPage }" step="1" varStatus="status">
								<c:if test="${ pageInfo.currentPage == status.current}">
									<li class="page-item"><button class="page-link" disabled>
											<c:out value="${ status.current }" />
										</button></li>
								</c:if>
								<c:if test="${ pageInfo.currentPage != status.current}">
									<li class="page-item"><button class="page-link"
											onclick="location.href='${ path }/board/boardList?page=${ status.current }'">
											<c:out value="${ status.current }" />
										</button></li>
								</c:if>
							</c:forEach>

							<!-- 다음 페이지로 -->
							<li class="page-item"><button class="page-link"
									onclick="location.href='${ path }/board/boardList?page=${ pageInfo.nextPage }'">&gt;</button></li>

							<!-- 맨 끝으로 -->
							<li class="page-item"><button class="page-link"
									onclick="location.href='${ path }/board/boardList?page=${ pageInfo.maxPage }'">&gt;&gt;</button></li>
						</ul>
					</div>
				</nav>
			</div>
			<!-- 페이징 할 부분 -->
		</div>
	</div>
</section>


    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
