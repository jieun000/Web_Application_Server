<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container row">
		<div class="col-4 pt-5">
			<img class="img-fluid" src="images/${movie.poster}">	
		</div>
		
		<div class="container col-8">
			<h3>영화 수정 페이지</h3>
			<form method="post" action="update.do" enctype="multipart/form-data">
				<input type="hidden" name="code" value="${movie.code}">
				<label class="form-label">영화 제목</label>
				<input class="form-control" type="text" name="title" value="${movie.title}">
				<label class="form-label">가격</label>
				<input class="form-control" type="text" name="price" value="${movie.price}">
				<label class="form-label">감독</label>
				<input class="form-control" type="text" name="director" value="${movie.director}">
				<label class="form-label">배우</label>
				<input class="form-control" type="text" name="actor" value="${movie.actor}">
				<label class="form-label">영화 설명</label>
				<textarea class="form-control" rows="5" name="synopsis">${movie.synopsis}</textarea>
				<label class="form-label">포스터</label>
				<input class="form-control" type="file" name="poster">
				
				<div class="py-3">
					<input class="btn btn-primary" type="submit" value="수정">
					<input class="btn btn-primary" type="button" value="목록" onclick="location.href='list.do'">
					<input class="btn btn-danger" type="button" value="삭제" onclick="location.href='delete.do?code=${movie.code}'">
				</div>
			</form>
		</div>
	</div>

</body>
</html>









