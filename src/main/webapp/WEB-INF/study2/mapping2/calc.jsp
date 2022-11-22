<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>test4</title>
		<jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>
	<p><br/></p>
	<div class="container">
		<!-- class파일을 제외한 모든 게 소문자이다. -->
		<form name="myform" method="post" action="${ctp}/mapping2/CalcOk.calc"> <!-- 1. 확장자 컨트롤러(mapping2 > CalcController) 만들기 -->
			<h2>자료 전송 연습2</h2>
				<div>
					수 1 : <input type ="text" name="su1" value="100" class="form-control"/>
				</div>
				<div>
					연산자 : 
					<select name ="opt">
						<option value="+" selected>더하기</option>
						<option value="-">빼기</option>
						<option value="*">곱하기</option>
						<option value="/">나누기</option>
						<option value="%">나머지</option>
					</select>
				</div>
				<div>
					수 2 : <input type ="text" name="su2" value="200" class="form-control"/>
				</div>
				<div>
					<input type ="submit" name="전송" class="btn btn-success form-control"/>
				</div>
		</form>
		<hr/>
		<p>
			<a href="${ctp}/mapping2/JuList.calc" class="btn btn-success">회원리스트</a>
		</p>
	</div>
	<p><br/></p>
</body>
</html>