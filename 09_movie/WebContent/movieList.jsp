<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="contaicer my-3">
		<div class="text-end mb-2">
			<a class="btn btn-primary" href="">영화 등록</a>
		</div>
		<table class="table text-center">
			<thead class="table-light">
				<tr>
					<th>제목</th>
					<th>감독</th>
					<th>배우</th>
					<th>가격</th>
				</tr>
			</thead>
			<c:forEach var="movie" items="${movies}">
				<tr>
					<td><a href="detail.do?code=${movie.code}">${movie.title}</a></td>
					<td>${movie.director}</td>
					<td>${movie.actor}</td>
					<td>${movie.price}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>