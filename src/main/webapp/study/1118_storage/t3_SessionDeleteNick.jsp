<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t3_SessionDeleteNick.jsp 닉네임 삭제하기 -->

<%
	session.removeAttribute("sNickName");
%> 

<script>
  alert("${sMid}님 닉네임세션 삭제 완료");
  location.href = "t3_SessionMain.jsp";
</script>