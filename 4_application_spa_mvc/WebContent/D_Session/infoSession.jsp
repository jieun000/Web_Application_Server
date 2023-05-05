<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 정보 출력 페이지</h1>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	Date createDate = new Date();
	Date lastDate = new Date();
	
	String id = session.getId(); // 세션 id
	// 1970-1-1부터는 리턴, int는 부족함
	long createTime = session.getCreationTime(); // 세션 생성된 시간
	long lastTime = session.getLastAccessedTime(); // 마지막 엑세스 시간
	long useTime = (lastTime - createTime) / 1000; // 초단위로 나오게 나누기 1000
						// 리턴값 초단위로 리턴, 분단위 보려면 나누기60
	int inActive = session.getMaxInactiveInterval(); // 세션 유효시간 기본값(30분)
	boolean isNew = session.isNew(); // 새 세션이 생성 -> True, 아니면 False
	
	createDate.setTime(createTime);
	lastDate.setTime(lastTime);
%>
	세션 id: <%=id%> <br>
	세션 생성 시간: <%=createTime%> <br>
	세션 생성 날짜: <%=sdf.format(createDate)%> <br>
	세션 마지막 엑세스 시간: <%=lastTime%> <br>
	세션 마지막 엑세스 날짜: <%=sdf.format(lastDate)%> <br>
	웹 페이지에 머문 시간: <%=useTime%> <br>
	세션 유효시간: <%=inActive%> <br>
	새 세션: <%=isNew%>
</body>
</html>