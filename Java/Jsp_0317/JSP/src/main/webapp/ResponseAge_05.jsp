<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성인 확인</title>
</head>
<body>
<% 
	String title1=URLDecoder.decode(request.getParameter("title1"),"UTF-8");
	String str1= URLDecoder.decode(request.getParameter("str1"),"UTF-8");
	String age1= request.getParameter("age1");
%>
	<h1><%=title1 %></h1>
	당신의 나이는 <%=age1 %> 살 이므로 주류 구매가 <%=str1 %>합니다.<br>
	<a href = "http://localhost:8080/JSP/ResponseAge_01.jsp">처음으로 이동</a>
</body>
</html>