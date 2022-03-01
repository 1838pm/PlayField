<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="게시글 수정" name="title"/>
</jsp:include>

<style>
	div#board-write-container
	{
		width:600px;
		margin:0 auto;
		text-align:center;
	}
	
	div#board-write-container h2
	{
		margin:10px 0;
	}
	
	table#tbl-board
	{
		width:700px;
		height: 700px;
		margin:0 auto;
		border:1px solid black;
		border-collapse:collapse;
	}
	
	table#tbl-board th
	{
		width:200px;
		border:1px solid;
		padding:5px 0;
		text-align:center;
		font-weight: bold;
		font-size: larger;
		height: 30px;
	}
	
	table#tbl-board td
	{
		border:1px solid;
		padding:5px 0 5px 10px;
		text-align:left;
	}
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


<section id="content">
<div id='board-write-container' style="margin: 120px auto;">
<h2>게시판 수정</h2>
	<form action="${ path }/board/update" method="POST" enctype="multipart/form-data" style="width:700px;">
		<input type="hidden" name="no" value="${ board.no }" />
		<input type="hidden" name="originalFileName" value="${ board.originalFileName }" />
		<input type="hidden" name="renamedFileName" value="${board.renamedFileName}" />
	
		<table class="col-lg-10 mb-3" id="tbl-board">
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" id="title" value="${board.title}"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writerId" value="${ board.writerId }" readonly></td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td>
					<input type="file" name="reloadFile"><br>
					<c:if test="${ !empty board.originalFileName }">
						현재 업로드한 파일 : 
						<a>
							<c:out value="${ board.originalFileName }"></c:out>
						</a>
					</c:if>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea name="content" cols="50" rows="15" style="height: 478.32px;" ><c:out value="${ board.content }"></c:out></textarea>
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="수정" class="btn btn-primary animate-up-2" onclick="location.replace('${ path }/board/boardList')">
					<input type="button" onclick="location.replace('${ path }/board/boardList')" value="목록으로" class="btn btn-primary animate-up-2">
				</th>
			</tr>
		</table>
	</form>
</div>
</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
