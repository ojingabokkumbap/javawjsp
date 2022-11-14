<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
     <script>
    'ues strict';
    function fCheck() {
        let name = myform.name.value;
        
        if(name == "") {
            alert("이름을 입력하세요?");
            myform.name.focus();
            return false;
        }
        else {
            myform.submit();
        }
    }
    </script>
</head>
<body>
<p><br/></p>
<div class="container">
    <form name="myform" method="post" action="signupOK.jsp">
        <fieldset>
                <legend>회원 가입</legend>
                <ul>
                    성 명 : <input type="text" name="name" placeholder="이 름"/></br></br>
                    나 이 : <input type="number" name="age" placeholder="나 이" /></br></br>
                    성 별 : <input type="radio" name="gender" value="남성" checked /> 남성  
                                <input type="radio" name="gender" value="여성"/> 여성 </br></br>
                    전 화 : <input type="text" name="number" placehodler="전화번호"/></br></br>
                    생 일 : <input type="date" name="birth"/></br></br>
                    좋아하는 음식 : 
                    <input type="checkbox" name="food" value="곱창"> 곱창
                    <input type="checkbox" name="food" value="대창"> 대창
                    <input type="checkbox" name="food" value="막창"> 막창
                    <input type="checkbox" name="food" value="파전"> 파전
                    <input type="checkbox" name="food" value="닭갈비"> 닭갈비
                    </br></br>                    
                <input type="button" value="김동명바보멍청이진ㅁ짜짜쯩나" onclick="fCheck()" class="btn btn-success form-control"/>
                </ul>
        </fieldset>
    </form>
</div>
<p><br/></p>
</body>
</html>
