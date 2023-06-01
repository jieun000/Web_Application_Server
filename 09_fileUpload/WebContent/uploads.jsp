<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="uploads.do" enctype="multipart/form-data">
		1. 파일<input type="file" name="file01"><br>
		2. 파일<input type="file" name="file02"><br>
		3. 파일<input type="file" name="file03"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>