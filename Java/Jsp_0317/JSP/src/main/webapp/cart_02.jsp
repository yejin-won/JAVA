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
		int amount = Integer.parseInt(request.getParameter("amount"));
		String str = request.getParameter("size");
		String str1 = request.getParameter("color");
		
		request.setAttribute("amount",amount);
		request.setAttribute("size",str);
		request.setAttribute("color",str1);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cart_03.jsp");
		dispatcher.forward(request, response);
	%>
</body>
</html>