<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>jstl1.jsp</title>
  <jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>JSTL(Java Standard Tag Library)</h2>
  <table class="table">
    <tr>
      <th>라이브러리명</th>
      <th>주소(URL)</th>
      <th>접두어</th>
      <th>기본문법</th>
    </tr>
    <tr>
      <td>Core</td>
      <td>http://java.sun.com/jsp/jstl/core</td>
      <td>c</td>
      <td>< c : 태그... ></td>
    </tr>
    <tr>
      <td>Function</td>
      <td>http://java.sun.com/jsp/jstl/function</td>
      <td>fn</td>
      <td>$ < fn : 태그... ></td>
    </tr>
    <tr>
      <td>Formatting</td>
      <td>http://java.sun.com/jsp/jstl/fmt</td>
      <td>fmt</td>
      <td>< fmt : 태그... ></td>
    </tr>
    <tr>
      <td>SQL</td>
      <td>http://java.sun.com/jsp/jstl/sql</td>
      <td>sql</td>
      <td>< sql : 태그... ></td>
    </tr>
  </table>
  <hr/><hr/>
  <h4>Core라이브러리 : 변수제어(선언/할당), 제어문(조건,반복문)안에서의 변수로 활용</h4>
	<p>변수 선언 : < c : set var="변수명" value="값" /></p>
	<p>변수 선언 : < c : out value="변수명/값" /></p>
	<p>변수 선언 : < c : remove var="변수명"/></p>
	<p>사용 예 : <br/>
		su1 변수 선언 후 초기 값을 100으로 선언 >> <c:set var="su1" value="100"/><br/>
		su1 변수의 값을 출력 >> <c:out value="${su1}"/> == ${su1}<br/>
	</p>
	<hr/>
	<h3>JSTL 제어문 (core 라이브러리에서의 활용)</h3>
	<h3>IF문 (조건문 : 참일 때만 수행할 내용이 있음 . 즉 ,else 문장이 없다.)</h3>
	<p>문법 : < c : if test= "$ {조건식}" 참일 때만 수행할 내용 < / c : if></p>
	(일반 비교연산 수행 시는 '문자'로 비교 처리한다. 따라서 숫자로 비교하려면 숫자로 변형해서 비교한다.)<br/>
	su2 변수 선언 후 초기 값을 200으로 선언 >> <c:set var="su2" value="200"/><br/>
	su3 변수 선언 후 초기 값을  200으로 선언 >> <c:set var="su3" value=" 200"/><br/>
	1-1. su1 == su2 : <c:if test="${su1 == su2}">su1과 su2는 같다.</c:if><br/>
	1-2. su1 != su2 : <c:if test="${su1 != su2}">su1과 su2는 같지 않다.</c:if><br/>
	2-1. su1 >= su2 : <c:if test="${su1 >= su2}">su1이 su2보다 크거나 같다.</c:if><br/>
	2-2. su1 < su2 : <c:if test="${su1 < su2}">su1은 su2 보다는 작다.</c:if><br/>
	3-1. su3 == su2 : <c:if test="${su3 == su2}">su3과 su2는 같다.</c:if><br/>
	3-2. su3 != su2 : <c:if test="${su3 != su2}">su3과 su2는 같지 않다.</c:if><br/>
	<hr/>
  <c:set var="jumsu" value="${param.jumsu}"/>
  <c:if test="${jum >= 60}"><c:set var="grade" value="D"/></c:if>
  <c:if test="${jum >= 70}"><c:set var="grade" value="C"/></c:if>
  <c:if test="${jum >= 80}"><c:set var="grade" value="B"/></c:if>
  <c:if test="${jum >= 90}"><c:set var="grade" value="A"/></c:if>
  <c:if test="${jum < 60}"><c:set var="grade" value="F"/></c:if>
  
  <c:if test="${param.gender == '1'}"><c:set var="gender" value="남"/></c:if>
  <c:if test="${param.gender == '2'}"><c:set var="gender" value="여"/></c:if>
  <p>점수를 입력후 학점버튼을 클릭하면 해당 학점을 출력하세요?</p>
  <form name="myform">
    <div>
      성별 :
      <input type="radio" name="gender" value="1" checked />남자
      <input type="radio" name="gender" value="2"/>여자
    </div>
    <div>
	    점수 : <input type="text" name="jumsu" class="form-control mb-2"/>
	    <input type="submit" value="학점출력" class="btn btn-success"/>
    </div>
    <div>
      입력한 점수 : <font color="red"><b>${jumsu}</b></font><br/>
      계산된 학점 : <font color="red"><b>${grade} 학점</b></font><br/>
      성별 : <font color="red"><b>${gender}자</b></font><br/>
    </div>
	</form>
	<br/>	
	<hr/>
	<h2>다중 조건 비교(choose ~ when)</h2>
  <pre>
    문법 :
      < c : choose>
        < c : when test="조건식1">수행할내용1< / c:when>
        < c : when test="조건식2">수행할내용2< / c:when>
           ~~~~  ~~~~
        < c : otherwise>수행할내용2< / c:otherwise>
      < /c : choose>
  </pre>
  <!-- when은 switch와 비슷 -->
	<c:choose>
		<c:when test="${jumsu >= 90}"><c:set var="grade2" value="A"/></c:when>
		<c:when test="${jumsu >= 80}"><c:set var="grade2" value="B"/></c:when>
		<c:when test="${jumsu >= 70}"><c:set var="grade2" value="C"/></c:when>
		<c:when test="${jumsu >= 60}"><c:set var="grade2" value="D"/></c:when>
		<c:otherwise><c:set var="grade2" value="F"/></c:otherwise>
	</c:choose>

<h4>점수를 입력후 학점버튼을 클릭하면 해당 학점이 출력 <font color="red"><b>${grade2}</b></font> 학점</h4>
</div>
<p><br/></p>
</body>
</html>