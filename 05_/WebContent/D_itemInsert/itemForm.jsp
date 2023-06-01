<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품 정보 입력</h1>
	<form method="post" action="itemResult.jsp">
		상품명: <input type="text" name="name"> <br>
		가격: <input type="text" name="price"> <br>
		설명 <br>
		<pre><textarea rows="5" cols="30" name="desc"></textarea></pre>
		<input type="submit" value="입력">
	</form>
</body>
</html>