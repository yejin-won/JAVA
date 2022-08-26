<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름 입력</title>
</head>
<body>
	이름을 입력하고 확인 버튼을 누르세요.
	<br>
	<br>
	 <form action="Request_02.jsp" method="post">
		 이름 : <input type ="text" name="yourName">
		 <input type ="submit" value="확인">  
	 </form>
	 <%
	 	String name = "James"; 
	 %>
	 <a href = "http://localhost:8080/JSP/Request_02.jsp?yourName=<%=name %>">Test</a>
</body>
</html>