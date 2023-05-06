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
	out.print("hi<br>");
%>
	<%="hi"%> <br>
	${"hi"} <br>
	
	정수: ${10} <br>
	실수: ${3.14} <br>
	문자: ${"표현언어"} <br>
	불린: ${true} <br>
	널값: ${null} <br>
	
	\${5+2} = ${5+2} <br>
	\${5/2} = ${5/2} <br>
<%-- 	\${5 div 2} = ${5 div 2} <br> 실행 됨 --%>
	\${5%2} = ${5%2} <br>
	\${5 mod 2} = ${5 mod 2} <br>
	\${5>2} = ${5>2} <br>
	\${(5>2) ? "참" : "거짓"} = ${(5>2) ? "참" : "거짓"} <br>
	\${5>2 || (10>20)} = ${5>2 || (10>20)}
</body>
</html>