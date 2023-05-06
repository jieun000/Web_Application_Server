<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="item" class="com.study.javabeans.itemBean"/>
<jsp:setProperty property="*" name="item"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>입력한 상품 정보 결과</h1>
	상품명: ${item.name} <br>
	가격: <jsp:getProperty property="price" name="item"/> <br>
	<pre> 설명: <jsp:getProperty property="desc" name="item"/>
	</pre>
</body>
</html>