<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>t3_SessionMain</title>
		<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
<h2>세션 연습 메인메뉴</h2>
<hr/>
<div class="row mb-3">
	<div class="col"><a href="t3_SessionSave.jsp" class="btn btn-success form-control">세션저장</a></div>
	<div class="col"><a href="t3_SessionCheck.jsp" class="btn btn-primary form-control">세션 확인</a></div>
</div>
<div class="row">
	<div class="col"><a href="t3_SessionDelete.jsp" class="btn btn-danger form-control">세션(전체) 삭제</a></div>
	<div class="col"><a href="t3_SessionDeletePwd.jsp" class="btn btn-danger form-control">세션(비밀번호)삭제</a></div>
</div>
</div>
<p><br/></p>
</body>
</html>