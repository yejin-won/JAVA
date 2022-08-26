<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>구구단(2단)</title>
	</head>
	<body>
	<%
		int i;
		int dan = 2;
		int result = 0;
		for(i=1;i<10;i++){
			result = dan*i;
	%>
		<%=dan %> * <%=i %> = <%=result %><br>
		==========<br>
	<%
		}
	%>
	</body>
</html>