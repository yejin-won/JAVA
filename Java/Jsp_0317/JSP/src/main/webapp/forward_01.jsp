<%@page import="org.apache.catalina.ha.backend.Sender"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산</title>
</head>
<body>	
	<form action="http://192.168.5.55:8080/JSP/forward_02.jsp" method="get">
		<table>
		<tr>
			<td>첫번째 수 :</td><td><input type="hidden" name = "n1"></td>
		</tr>
		<tr>
			<td>두번째 수 :</td><td><input type="text" name = "n2"></td>
		</tr>
		<tr>
						<td><input type="submit" value="입력"></td>		
		</tr>
		</table>
	</form>
</body>
</html>
