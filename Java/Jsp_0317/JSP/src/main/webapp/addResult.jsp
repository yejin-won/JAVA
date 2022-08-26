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
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	int sumResult = num1 + num2;
%>
	<table>
	<tr>
		
		<td>입력하시 두 수의 합은 </td>
		<td>
		<form action="#" method = "post">
			<input type="text" value = "<%=sumResult %>" size="5" readonly="readonly">
		</form>
		</td>
		<td>입니다.</td>
	</tr>
	</table>
</body>
</html>