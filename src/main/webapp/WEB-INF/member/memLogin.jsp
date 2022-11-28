<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>memLogin</title>
		<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<script>

</script>
<body>
<jsp:include page="../../include/header.jsp"></jsp:include>
	<p><br/></p>
	<div class="container">
		<div class ="modal-dialog">
			<div class="modal-content">
				<div class="container">
					<form name="myform" method="post" action="${ctp}/memLoginOK.mem" class="was-validated">
						<h2>회원 로그인</h2>
						<p>회원 아이디와 비밀번호 입력</p>
				    <div class="form-group">
				      <label for="mid">아이디: </label>
				      <input type="text" class="form-control" name="mid" id="mid" value ="${mid}" placeholder="아이디를 입력하세요." required autofocus/>
				      <div class="valid-feedback">OK</div>
				      <div class="invalid-feedback">아이디 입력은 필수입니다.</div>
				    </div>
				    <div class="form-group">
				      <label for="pwd">비밀번호 :</label>
				      <input type="password" class="form-control" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요." required/>
				      <div class="invalid-feedback">비밀번호 입력은 필수입니다.</div>
				    </div>
				    <div class="form-group">
					    <button type="submit" class="btn btn-success">로그인</button>
					    <button type="reset" class="btn btn-danger">다시 입력</button>
					    <button type="button" onclick="location.href='${ctp}/';" class="btn btn-warning">돌아가기</button>
					    <button type="button" onclick="location.href='${ctp}/memJoin.mem';" class="btn btn-primary">회원가입</button>
				    </div>
				    <div class="row">
				    	<span class="col"><input type="checkbox" name="idCheck" checked/> 아이디 저장 </span>
				    	<span class="col">
				    		<a href="#">아이디 찾기</a> /
				    		<a href="#">비밀번호 찾기</a>
				    	</span>
				    </div>
					</form>
    		</div>
    	</div>
    </div>
  </div>
	<p><br/></p>
<jsp:include page="../../include/footer.jsp"></jsp:include>
</body>
</html>