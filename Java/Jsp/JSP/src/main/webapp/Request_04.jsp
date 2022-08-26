<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sum</title>
</head>
<body>
	두 수의 합은 <%=Integer.parseInt(request.getParameter("nuBer1"))
	+ Integer.parseInt(request.getParameter("nuBer2")) %> 입니다.
</body>
</html>