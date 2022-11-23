<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("newLine" ,"\n"); %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>title</title>
		<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../include/header.jsp"></jsp:include>
<style>
	th{
		text-align: center;
		background-color: #ccc;
	}
</style>
<script>
	//방명록 삭제처리(get방식 )
	function delCheck(idx){
		let ans = confirm("정말로 삭제 하시겠습니까?");
		if(ans) location.href="${ctp}/guDelete.gu?idx="+idx;
	}
</script>
	<p><br/></p>
	<div class="container">
		<h2 class="text-center">방명록리스트</h2>
		<br/>
		<table class ="table table-borderless mb-0">
			<tr>
				<td>
					<c:if test="${sAMid != 'admin'}"><a href="${ctp}/adminLogin.gu" class="btn btn-sm btn-warning">관리자</a></c:if>
					<c:if test="${sAMid == 'admin'}"><a href="${ctp}/adminLogout.gu" class="btn btn-sm btn-warning">관리자 로그아웃</a></c:if>
				</td>
				<td style="text-align:right;"><a href="${ctp}/guest/guInput.gu" class="btn btn-sm btn-warning">글쓰기</a></td>
			</tr>
		</table>
		<c:forEach var="vo" items="${vos}" varStatus="st">		
			<table class ="table table-borderless">
				<tr>
					<td>방문번호 : ${vo.idx}
						<c:if test="${sAMid == 'admin'}"><a href="javascript:delCheck(${vo.idx})" class="btn btn-sm btn-danger">삭제</a></c:if>
					</td>
					<td style="text-align:right;">방문 IP : ${vo.hostIp}</td>
				</tr>
			</table>
			<table class ="table table-bordered">
				<tr>
					<th style="width:20%;">성 명</th>
					<td style="width:20%;">${vo.name}</td>
					<th style="width:20%;">방문일자</th>
					<td style="width:20%;">${vo.visitDate}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td colspan="3">${vo.email}</td>
				</tr>
				<tr>
					<th>홈페이지</th>
					<td colspan="3">
					<c:if test="${fn:length(vo.homePage) <= 8 }">- 없음 -</c:if>
					<c:if test="${fn:length(vo.homePage) > 8 }"><a href="http://${vo.homePage}" target="_blank">${vo.homePage}</a></c:if>
					</td>
				</tr>
				<tr>
					<th>방문소감</th>
					<td colspan="3">${fn:replace(vo.content,newLine,'<br/>')}</td>
				</tr>
			</table>
			<br/>
		</c:forEach>
	</div>
	<p><br/></p>
<jsp:include page="../../include/footer.jsp"></jsp:include>
</body>
</html>