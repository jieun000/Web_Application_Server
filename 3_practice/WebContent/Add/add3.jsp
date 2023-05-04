<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// num1에는 작은 숫자, num2에는 큰 숫자를 넣을 것임
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	int sum = 0; // 두 수 사이의 합을 저장
	int temp; // 임시 저장 변수
	
	// 큰수 작은수를 각각 num1, num2에 옮겨주는 작업
	if( num1 > num2) {
		temp = num1;
		num1 = num2;
		num2 = temp;
	}
	for(int i=num1; i<=num2; i++) {
		sum += i;
	}
%>
	<h1><%=num1%>부터 <%=num2%>까지의 합: <%=sum%></h1>
	<h1>계산 과정 출력</h1>
<%
	int sum2 = 0;
	for(int i=num1; i<num2; i++) {
		sum2 += i;
%>
	<b><%=i%> + </b>
<%
	}
%>
	<b><%=num2%> = <%=num2 + sum2%></b>
	<h1>합계가 반복문에서 다 처리</h1>
<%
	int sum3 = 0;
	for(int i=num1; i<=num2; i++) {
		sum3 += i;
%>
	<b><%=i%></b>
<%
	}
%>
	<b> = <%=sum3%></b>
</body>
</html>