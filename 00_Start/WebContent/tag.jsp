<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<%! /* 선언문 - 자바 코드 작성(변수, 메서드)*/
	String str = "hi";
	int a = 10;
	int b = 20;
	
	public int add(int x, int y) {
		return x + y;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>스크립트릿 시작</h3>
<%	/* 스크립트릿(scriptlet) - 자바 코드를 작성 */
	out.print("<h5>" + str + "</h5>");
	out.print("두 수의 합: " + add(a,b));
%>
	<h3>스크립트릿 끝</h3>
	<h3>표현식 작성 시작</h3>
	
	<h5><%=str %></h5>
	<span>두 수의 합: <%=add(a,b) %></span>
	<p>두 개 뺀 거: <%=a-b %></p>
	
	<h3>표현식 작성 끝</h3>
</body>
</html>

<%--
	scriptlet 주석
--%>

<!-- html 주석 
주석: 스크롤 + ctrl + shift + /
-->