<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>title</title>
		<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
	<p><br/></p>
	<div class="container">
		<h2>반복처리(forEach문)</h2>
		<pre>
			문법 1 : < c : forEach var="변수" item="$ {배열/객체명}" varStatus="매개변수">
							수행할 내용~~
							< /c : forEach>
			문법 2 : < c : forEach var="변수" begin="초기값" end="최종값" step="증감값" varStatus="매개변수">
							수행할 내용~~~
							< /c : forEach>
			문법 3 : < c : forTokens var="변수" items="$ {배열/객체명}" delims="구분기호">
							수행할 내용~~~
							< /c : forTokens>
		</pre>
		<p> 문법 1 : <br/>
		<c:forEach var="i" begin="1" end="10" step="1" varStatus="st">
			${i} . 안녕 / &nbsp;
		</c:forEach>							
		</p>
		<p> 문법 2 : <br/>
		<c:forEach var="i" begin="1" end="10" step="1" varStatus="st">
			${st.index} / ${st.count})) / ${st.first} / ${st.last}<br/>
		</c:forEach>							
		</p>
	<%
	String hobbys = "등산,바둑,수영,영화감상,게임";
	request.setAttribute("hobbys", hobbys);
	%>
		<p> 문법 3 : <br/>
		<c:forTokens var="hobby" items="${hobbys}" delims="," varStatus="st">
			${st.count}.${hobby}<br/>
		</c:forTokens>
		</p>
		<p>
		전송 된 취미 중에서 바둑은 빨강 / 수영은 파랑 / 나머지는 검정으로 출력하시오오ㅗ<br/>
		
		<c:forTokens var="hobby" items="${hobbys}" delims="," varStatus="st">
		<c:choose>
			<c:when test="${hobby == '바둑'}"><font color="red"><b>${hobby}</b></font></c:when>
			<c:when test="${hobby == '수영'}"><font color="blue">${hobby}</font><br/></c:when>
			<c:otherwise>${hobby}<br/></c:otherwise>
		</c:choose>
		</c:forTokens>
		</p>
		  <hr/>
  <h3>2중 for문 활용(구구단)</h3>
  <p>이중 반복문을 활용하여 3단에서 5단까지 출력하시오</p>
  <c:forEach var="i" begin="3" end="5">
    ${i}단<br/>
    <c:forEach var="j" begin="1" end="9">
      ${i} * ${j} = ${i * j}<br/>
    </c:forEach>
    =====================<br/>
  </c:forEach>
	</div>
	<p><br/></p>
</body>
</html>