<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>title</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<script>
	'use strict';
	
	function fCheck() {
		let product1 = document.getElementById("product1").value;
		
		if(product1 == ""){
			alert("첫번째 상품을 등록하세요")
			document.getElementById("product1").focus();
		}
		else{
			myform.submit();
		}
	}

</script>
<body>
<p><br/></p>
<div class="container">
	<h2>상품등록</h2>
	<form name="myform" method="post" action="<%=request.getContextPath() %>/j1114_Test3OK">
		<p>상품 : <input type="text" name="product" id="product1" autofocus/></p>
		<p>상품 : <input type="text" name="product" id="product2"/></p>
		<p>상품 : <input type="text" name="product" id="product3"/></p>
		<p>상품 : <input type="text" name="product" id="product4"/></p>
		<p>상품 : <input type="text" name="product" id="product5"/></p>
		<p>상품 : <input type="text" name="product" id="product6"/></p>
		<p>상품 : <input type="text" name="product" id="product7"/></p>
		<p>상품 : <input type="text" name="product" id="product8"/></p>
		<p>상품 : <input type="text" name="product" id="product9"/></p>
		<p>상품 : <input type="text" name="product" id="product10"/></p>
		
		<input type="button" value="전송" onclick="fCheck()"/>
		<input type="reset" value="다시"/> 		
	</form>
</div>
<p><br/></p>
</body>
</html>