<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		합계를 구하기 위한 숫자를 입력하세요.
		<br>
		<form action="addResult.jsp" method = "post">
			숫자 1 : <input type = "text"  name = "num1"><br>
			숫자 2 : <input type="text" name = "num2"><br>
					<input type="submit" value = "add">
		</form>
</body>
</html>