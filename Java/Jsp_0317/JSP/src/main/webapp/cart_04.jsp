<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택 저장 내용</title>
</head>
<body>
<%
	int amount = Integer.parseInt(request.getParameter("amount"));
	String str = request.getParameter("size");
	String str1 = request.getParameter("color");
%>

		수량 : <%=amount %><br>
		크기 : <%=str %><br>
		색상 : <%=str1 %><br>
</body>
</html>