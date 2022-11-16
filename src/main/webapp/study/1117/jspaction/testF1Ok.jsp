<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% request.setCharacterEncoding("utf-8"); %>

<!-- 앞에서 전송된 값들을 변수에 담아보기 -->
<c:set var="name" value="${param.name}"/>
<c:set var="gender" value="${param.gender}"/>
<c:set var="age" value="${param.age}"/>
<c:set var="job" value="${param.job}"/>
<c:set var="address" value="${param.address}"/>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>전송된 자료 결과 보기</title>
		<jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>개별 인적 자료 현황</h2>
	<hr/>
		<table class="table table-bordered">
		<!-- vo에 저장된 값 부르기 -->
		<tr>
			<th>성명</th>
			<td>${name}</td>
		</tr>
		<tr>
			<th>성별</th>
			<td>${gender}</td>
		</tr>
		<tr>
			<th>나이</th>
			<td>${age}</td>
		</tr>
		<tr>
			<th>직업</th>
			<td>${job}</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${address}</td>
		</tr>
		</table>
</div>	
<p><br/></p>
</body>
</html>