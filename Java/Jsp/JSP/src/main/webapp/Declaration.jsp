<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부를 이용한 덧셈</title>
</head>
<body>
<%! 
	public int sum(int a, int b){
		return a+b;
}
%>

<%
	out.print("2 + 1 = " + sum(2,1) + "<br>");
	out.print("3 + 1 = " + sum(3,1) + "<br>");
	out.print("4 + 1 = " + sum(4,1) + "<br>");
	out.print("5 + 1 = " + sum(5,1) + "<br>");
%>
<p></p>
	2 + 1 = <%=sum(2,1) %><br>
	3 + 1 = <%=sum(3,1) %><br>
	4 + 1 = <%=sum(4,1) %><br>
	5 + 1 = <%=sum(5,1) %><br>
</body>
</html>