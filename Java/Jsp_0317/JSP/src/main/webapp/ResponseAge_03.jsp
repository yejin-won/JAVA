<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성인 확인</title>
</head>
<body>
	<h1>성인</h1>
<% 
	String age1= request.getParameter("age1");
%>
	당신의 나이는 <%=age1 %> 살 이므로 주류 구매가 가능합니다.<br>
	<a href = "http://localhost:8080/JSP/ResponseAge_01.jsp">처음으로 이동</a>
</body>
</html>