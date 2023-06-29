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
			<img class="img-fluid" src="images/${detail.poster}">	
		</div>
		
		<div class="container col-8">
			<h3>영화 상세 페이지</h3>
			<form>
				<label class="form-label">영화 제목</label>
				<input class="form-control" type="text" name="title" value="${detail.title}">
				<label class="form-label">가격</label>
				<input class="form-control" type="text" name="price" value="${detail.price}">
				<label class="form-label">감독</label>
				<input class="form-control" type="text" name="director" value="${detail.director}">
				<label class="form-label">배우</label>
				<input class="form-control" type="text" name="actor" value="${detail.actor}">
				<label class="form-label">영화 설명</label>
				<textarea class="form-control" rows="5" name="synopsis">${detail.synopsis}</textarea>
			</form>
			
			<div class="py-3">
				<input class="btn btn-primary" type="button" value="수정" onclick="location.href='update.do?code=${detail.code}'">
				<input class="btn btn-primary" type="button" value="목록" onclick="location.href='list.do'">
				<input class="btn btn-primary" type="button" value="포스터 다운" onclick="location.href='download?poster=${detail.poster}&title=${detail.title}'">
			</div>
		</div>
	</div>
	
</body>
</html>