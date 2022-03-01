<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<style>
section>div#board-write-container {
	width: 600px;
	margin: 0 auto;
	text-align: center;
}

section>div#board-write-container h2 {
	margin: 10px 0;
}

table#tbl-board {
	width: 800px;
	margin: 0 auto;
	border: 2px solid black;
	border-collapse: collapse;
	clear: both;
}

table#tbl-board th {
	width: 125px;
	height: 50px;
	border: 1px solid;
	font-weight: bold;
	font-size: larger;
	padding: 5px 0;
	text-align: center;
}

table#tbl-board td {
	border: 1px solid;
	padding: 5px 0 5px 10px;
	text-align: left;
}

div#comment-container button#btn-insert {
	width: 80px;
	height: 50px;
	color: white;
	position: relative;
	top: -20px;
}

/*댓글테이블*/
table#tbl-comment {
	width: 35%;
	margin-top: 40px;
	margin-right: auto;
	margin-left: auto;
	border-collapse: collapse;
	clear: both;
	boader: 1px solid;
}

table#tbl-comment tr td {
	border-bottom: 1px solid;
	border-top: 1px solid;
	padding: 5px;
	text-align: left;
	line-height: 120%;
}

table#tbl-comment tr td:first-of-type {
	padding: 5px 5px 5px 50px;
}

table#tbl-comment tr td:last-of-type {
	text-align: right;
	width: 100px;
}

table#tbl-comment button.btn-delete {
	display: none;
}

table#tbl-comment tr:hover {
	background: lightgray;
}

table#tbl-comment tr:hover button.btn-delete {
	display: inline;
}

table#tbl-comment sub.comment-writer {
	color: navy;
	font-size: 14px
}

table#tbl-comment sub.comment-date {
	color: tomato;
	font-size: 10px
}

.border-light {
	color: none;
}
</style>


<section
	class="section-header section-images bg-primary pb-9 pb-lg-10 text-white overlay-primary"
	data-background="${path}/resources/img/Soccer-ball.jpg" style="margin-bottom: -8rem;">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-10 text-center" style="height: 50px;">
				<h1 class="mb-3" style="margin-top: 50px;">게시글 상세조회</h1>
				</div>
				</div>
				</div>
				</section>
		<div id="card border-light p-4 p-lg-5">
			<div class="row justify-content-center">
				<div class="col">
					<div class="card border-light p-4 p-lg-5">
						<table class="col-lg-10 mb-3" id="tbl-board">
							<tr>
								<th>글번호</th>
								<td>${board.no}</td>
							</tr>
							<tr>
								<th>제 목</th>
								<td>${board.title}</td>
							</tr>
							<tr>
								<th>작성자</th>
								<td>${board.writerId}</td>
							</tr>
							<tr>
								<th>조회수</th>
								<td>${board.readCount}</td>
							</tr>
							<tr>
								<th>첨부파일</th>
								<td><c:if test="${ !empty board.originalFileName }">
										<a
											href="javascript:fileDownload('${ board.originalFileName }', '${ board.renamedFileName }')">
											<img src="${ path }/images/file.png" width="20" height="20" />
											<c:out value="${ board.originalFileName }"></c:out>
										</a>

									</c:if> <c:if test="${ empty board.originalFileName }">
										<span> - </span>
									</c:if></td>
							</tr>
							<tr>
								<th style="height: 200px;">내 용</th>
								<td>${ board.content }</td>
							</tr>
							<%--글작성자/관리자인경우 수정삭제 가능 --%>
							<tr>
								<th colspan="2"><c:if
										test="${ !empty loginMember && (loginMember.id == board.writerId 
									|| loginMember.role == 'ROLE_ADMIN') }">
										<button type="button" id="btnUpdate" class="btn btn-primary animate-up-2">수정</button>
										<button type="button" id="btnDelete" class="btn btn-primary animate-up-2">삭제</button>
									</c:if>

									<button type="button"
										onclick="location.href='${ path }/board/boardList'" class="btn btn-primary animate-up-2">목록으로</button>
								</th>
							</tr>
						</table>

						<!-- 리플 등록 form 시작 -->
						<div id="comment-container">
							<div class="comment-editor" style="display: grid; justify-content: center;">
								<label class="h5 mb-4" for="exampleFormControlTextarea1" style="margin-top: 1.5rem; margin-bottom: -0.5rem !important;">
								<span class="badge badge-md badge-primary text-uppercase mr-2" >00</span>댓글
								</label>
								<br>
								<form action="<%=request.getContextPath()%>/board/reply"
									method="post">
									<input type="hidden" name="boardNo" value="${board.no}" /> <input
										type="hidden" name="writerId" value="${loginMember.id }" />
									<textarea name="content" id="replyContent" cols="55" rows="6" class="form-control border border-light-gray" placeholder="내용을 입력해 주세요."
										data-bind-characters-target="#charactersRemaining" maxlength="1000"></textarea>
									<button type="submit" id="btn-insert" style="top: 20px; margin-left: 510px;" class="btn btn-primary animate-up-2">등록</button>
								</form>
							</div>
						</div>
						<!-- 리플 등록 form 종료 -->

						<!-- 리플리스트 출력 시작-->
						<table id="tbl-comment">
							<c:if test="${ replyList != null }">
								<c:forEach var="reply" items="${ replyList }">
									<tr>
										<td><sub class="comment-writer">${reply.id}</sub> <sub
											class="comment-date">${reply.createDate}</sub> <br>
											${reply.content }</td>
										<td><c:if
												test="${ !empty loginMember && (loginMember.id == reply.id 	|| loginMember.role == 'ROLE_ADMIN') }">
												<button class="btn-delete"
													onclick="deleteReply('${reply.no}');">삭제</button>
											</c:if></td>
									</tr>
								</c:forEach>
							</c:if>
						</table>
						<!-- 리플리스트 출력 종료 -->

						<div
							class="text-center border-top border-bottom border-light my-6 py-6">
							<button type="button"
								class="btn btn-success mr-sm-3 animate-up-2">
								<span class="mr-2"><i class="far fa-thumbs-up"></i></span>좋아요
							</button>
							<button type="button" class="btn btn-danger animate-down-2">
								<span class="mr-2"><i class="far fa-thumbs-down"></i></span>싫어요
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>



		</div>
	</section>
					
	<script>
	$(document).ready(() => {
		$("#btnUpdate").on("click", (e) => {
			location.href = "${path}/board/update?no=${board.no}";
		});
		
		$("#btnDelete").on("click", (e) => {
			if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
				location.replace("${path}/board/delete?boardNo=${board.no}");
			}
		});
	});
	
	function deleteReply(replyNo){
		var url = "<%=request.getContextPath()%>/board/replydel?replyNo=";
		var requestURL = url + replyNo;
		location.replace(requestURL);
	}
	
	</script>

	<script>
		function fileDownload(oriname, rename) {
			const url = "${ path }/board/fileDown";
			
			let oName = encodeURIComponent(oriname);
			let rName = encodeURIComponent(rename);
			
			location.assign(url + "?oriname=" + oName + "&rename=" + rName);
		}
	</script>

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />