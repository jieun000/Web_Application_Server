<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품 목록</h1>
	<table border=1>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>가격</th>
			<th>설명</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		
		<c:forEach var="product" items="${products}">
			<tr>
				<td>${product.code}</td> <!-- 진짜 코드 -->
				<td>${product.name}</td> <!-- 진짜 이름 -->
				<td>${product.price}</td> 
				<td>${product.description}</td> 
				
				<td><a>수정</a></td> 
				<td><a href="delete.do?code=${product.code}">삭제</a></td> 
			</tr>
		</c:forEach>
	</table>
	<a href="addProduct.jsp">상품 등록</a>
</body>
</html>