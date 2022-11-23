<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>guInput.jsp</title>
		<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../include/header.jsp"></jsp:include>
	<p><br/></p>
	<div class="container">
		<form name="myform" method="post" action="${ctp}/guInputOK.gu" class="was-validated">
			<h2>방명록 글 작성</h2>
			<br/>
    <div class="form-group">
      <label for="name">성명 :</label>
      <input type="text" class="form-control" name="name" id="name" placeholder="Enter username"  required/>
      <div class="valid-feedback">적절한 이름입니다.</div>
      <div class="invalid-feedback">이름 입력하세요.</div>
    </div>
    <div class="form-group">
      <label for="email">이메일 :</label>
      <input type="text" class="form-control" name="email" id="email" placeholder="Enter email"/>
    </div>
    <div class="form-group">
      <label for="homePage">홈페이지 :</label>
      <input type="text" class="form-control" name="homePage" id="homePage" value="http://" placeholder="Enter homepage"/>
    </div>
    <div class="form-group">
      <label for="content">방문소감 입력 :</label>
      <textarea rows="5" class="form-control" name="content" id="content" required></textarea>
      <div class="valid-feedback">적절한 방문 소감입니다.</div>
      <div class="invalid-feedback">방문 소감 입력은 필수입니다.</div>
    </div>
    <div class="form-group">
	    <button type="submit" class="btn btn-success">방명록 등록</button>
	    <button type="reset" class="btn btn-danger">다시 입력</button>
	    <button type="button" onclick="location.href='${ctp}/guList.gu';" class="btn btn-primary">돌아가기</button>
    </div>
   <!-- 안보이는 ip주소 hidden tag로 넣기 -->
   	<input type="hidden" name="hostIp" value="<%=request.getRemoteAddr()%>"/>
		</form>
	</div>
	<p><br/></p>
<jsp:include page="../../include/footer.jsp"></jsp:include>
</body>
</html>