<%@page import="org.apache.catalina.valves.rewrite.InternalRewriteMap.LowerCase"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>move</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String aaa = request.getParameter("sitename").toLowerCase();

	switch(aaa){
	case "네이버" :
	case "naver" :
		response.sendRedirect("https://www.naver.com");
		break;
	case "다음" :
	case "daum" :
		response.sendRedirect("https://www.daum.net");
		break;
	case "구글" :
	case "google" :
		response.sendRedirect("https://www.google.com");
		break;
	default : 
		response.sendRedirect("https://www.yahoo.com");
	}
%>
</body>
</html>