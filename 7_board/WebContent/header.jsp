<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<div>
				<a class="btn btn-outline-light" href="">홈</a>
				<a class="btn btn-outline-light" href="">게시판</a>
				<a class="btn btn-outline-light" href="">글작성</a>
				<a class="btn btn-outline-light" href="">로그인</a>
				<a class="btn btn-outline-light" href="">로그아웃</a>
			</div>
			<form class="d-flex" method="get" action="">
				<input class="form-control me-2" type="search" name="search" placeholder="검색어 입력">
				<input class="btn btn-outline-success" type="submit" value="검색">
			</form>
		</div>
	</nav>			
</body>
</html>