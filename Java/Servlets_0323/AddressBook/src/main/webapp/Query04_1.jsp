<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Success</title>
</head>
<body>

		Seq :<%=session.getAttribute("Seq") %><br>
		해당 정보가 삭제되었습니다.
		<br>
		<br>
		
		<form action="Query01.jsp">
		<input type="submit" value="처음으로 되돌아가기">
		</form>
</body>
</html>