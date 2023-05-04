<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 2개의 input에 숫자를 입력하고 전송버튼을 누르면 두 수의 합을 출력해주는 jsp 만들기 -->
	<!-- method="get"은 생략해도 됨 -->
	두 수의 합
	<form method="get" action="add1.jsp">
		<input type="text" name="num1"> <br>
		<input type="text" name="num2"> <br>
		<input type="submit" value="전송">
	</form>
	
	<!-- input 숫자 하나를 입력하고 누적 버튼을 누를 때마다 입력한 숫자가 누적 되도록 만들기 -->
	숫자가 누적
	<form method="get" action="add2.jsp">
		<input type="text" name="num"> 
		<input type="submit" value="누적">
	</form>
	
	<!-- 숫자 두 개를 input에 입력받아 전송 숫자 사이의 총 합을 구하기  -->
	두 숫자 사이의 총 합 
		<form method="get" action="add3.jsp">
		<input type="text" name="num1"> <br>
		<input type="text" name="num2"> <br>
		<input type="submit" value="전송">
	</form>
</body>
</html>