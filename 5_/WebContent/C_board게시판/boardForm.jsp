<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시판 글 쓰기</h2>
	<form method="post" action="boardResult.jsp">
		<table border="1">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" size="50" name="email"></td>
			</tr>
			<tr>
				<td>글 제목</td>
				<td><input type="text" size="80" name="title"></td>
			</tr>
			<tr>
				<td height="100px">글 내용</td>
				<td>
					<textarea rows="20" cols="80" name="content"></textarea>
				</td>
			</tr>
		</table>
		<input type="submit" value="등록">
		<input type="reset" value="다시 작성">
	</form>
</body>
</html>