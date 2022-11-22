<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t3_SessionDeleteAll.jsp 세션 전체 삭제 -->
<%
	String imsiMid = (String)session.getAttribute("sMid");
	pageContext.setAttribute("imsiMid", imsiMid);

	session.invalidate(); //현재 저장된 모든 세션 삭제 
%> 

<script>
  alert("${imsiMid}님의 모든 세션 삭제 완료");
  location.href = "t3_SessionMain.jsp";
</script>