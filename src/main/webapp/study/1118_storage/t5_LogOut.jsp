<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t5_LogOut.jsp -->
<%
	String mid = (String) session.getAttribute("sMid");
	session.invalidate();
%>
<script>
  alert("<%=mid%>님 로그아웃 완료");
  location.href = "t5_Login.jsp";
</script>