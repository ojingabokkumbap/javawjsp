<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>title</title>
		<jsp:include page="/include/bs4.jsp"></jsp:include>
		<script>
			'use strict';
			let msg = "${msg}";
			let url = "${url}";
	
			if(msg=="guInputOK") msg= "방명록에 글이 등록되었습니다.";
			else if(msg=="guInputNO") msg= "방명록에 글이 등록되지 않았습니다.";
			else if(msg=="adminLoginOK") msg= "관리자 인증 성공";
			else if(msg=="adminLoginNO") msg= "관리자 인증 실패";
			else if(msg=="adminLogoutOK") msg= "관리자 로그아웃 되었습니다.";
			else if(msg=="guDeleteOK") msg= "방명록이 삭제 되었습니다.";
			else if(msg=="guDeleteNO") msg= "방명록 삭제 취소하셨습니다.";
			
			alert(msg);
			if(url != "") location.href= url;
		</script>
</head>
<body>
</body>
</html>