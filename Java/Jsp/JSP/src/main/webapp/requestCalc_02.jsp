<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String result="";
		String str = Arrays.toString(request.getParameterValues("calcWay"));
		
		result += str + "<br>";
		
		int num1 = Integer.parseInt(request.getParameter("number1"));
		int num2 = Integer.parseInt(request.getParameter("number2"));
		
		if(str.contains("덧셈")){
			result += "덧셈 결과는 " + (num1 + num2) + "입니다.<br>";
		}
		if(str.contains("뺄셈")){
			result += "뺄셈 결과는 " + (num1 - num2) + "입니다.<br>";
		}
		if(str.contains("곱셈")){
			result += "곱셈 결과는 " + (num1 * num2) + "입니다.<br>";
		}
		if(str.contains("나눗셈")){
			result += "나눗셈 결과는 " + (num1 / num2) + "입니다.";
		}
		
	%>
		<%=result %>
</body>
</html>