<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>title</title>
		<jsp:include page="../../../include/bs4.jsp"></jsp:include>
		<script>
			alert("잘못된 경로입니다.");
		</script>
</head>
<body>
	<p><br/></p>
	<div class="container">
		<h2>이 곳은 " webapp\WEB-INF\study2\mapping\test3.jsp " 입니다.</h2>
		<p>web-inf ( Web Information ) : 보호받고 있슴 </p>
	</div>
	<p><br/></p>
</body>
</html>