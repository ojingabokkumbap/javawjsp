
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="j1116h.sukVO" %>
<%
	sukVO vo = (sukVO) request.getAttribute("vo");
 %>
 
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <%@ include file="../../include/bs4.jsp" %>
</head>
<body>
<div class="container text-center">
	<h2>상품조회</h2>
	<hr/>
  <p>상품명 : ${vo.product}</p>
  <p>단가 : ${vo.price}</p>
  <p>수량 : ${vo.su}</p>
  <p>총합 : ${vo.tot}</p>
  <p><hr/></p>
  <p><a href="<%=request.getContextPath()%>/study/1116h/input.jsp" class="btn btn-secondary">돌아가기</a></p>
	<hr/>
</div>	
</body>
</html>