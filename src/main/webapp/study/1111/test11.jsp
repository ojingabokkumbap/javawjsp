<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>title</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	'use strict';
	function fcheck(){
		let name =myform.name.value;
		if(name == ""){
			alert("이름 입력");
			myform.name.focus();
			return false;
		}
		else{
			myform.submit();
		}
	}
	</script>
</head>

<body>
<p><br/></p>
<div class="container">
	<h2>값 전송하기 (get방식)</h2>
<!-- <form name="myform" method="get" action="../../atom/t7"> -->
<form name="myform" method="post" action="../../test11OK">
	name : <input type="text" name="name" value="Kim Jin" class="form-control"/>
	나 이 : <input type="number" name="age" value="25" class="form-control"/>
	<div>
	성 별 : <input type="radio" name="gender" value="남자" checked/>남자
				 <input type="radio" name="gender" value="여자" />여자<br/>
	</div>
	<div>
	취 미:
	<input type="checkbox" name="hobby" value="축구">축구
	<input type="checkbox" name="hobby" value="배구">배구
	<input type="checkbox" name="hobby" value="야구">야구
	<input type="checkbox" name="hobby" value="농구">농구
	</div>
	<input type="button" value ="전송" onclick="fcheck()" class="btn btn-success mt-3"/>	
	</form>
<p><br/></p>
</body>
</html>