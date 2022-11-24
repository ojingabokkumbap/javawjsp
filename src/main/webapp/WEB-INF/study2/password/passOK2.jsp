<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>title</title>
		<jsp:include page="/include/bs4.jsp"></jsp:include>
</head>
<body>
<jsp:include page="/include/header.jsp"></jsp:include>
	<p><br/></p>
	<div class="container">
		<h2>SHA암호화 결과 출력</h2>
		<p>
		 사용자 아이디 : ${mid}<br/>
		 입력 비밀번호 : ${pwd}<br/>
		 <hr/>
		 SHA 암호화 된 비밀번호(DB에 저장할 비밀번호) : ${shaPwd}
		</p>
		<hr/>
		<p><a href="${ctp}/pass.st" class="btn btn-primary">돌아가기</a></p>
	</div>
	<p><br/></p>
<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>