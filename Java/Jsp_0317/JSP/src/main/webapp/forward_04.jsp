<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="forward_05.jsp">
	<%
	int n1 = Integer.parseInt(request.getParameter("n1"));
	int n2 = Integer.parseInt(request.getParameter("n2"));
	%>
		<table>
		<tr>
			<td>첫번째 수 :</td><td><input type="text" name = "n1" value = "<%=n1 %>" readonly="readonly"></td>
		</tr>
		<tr>
			<td>두번째 수 :</td><td><input type="text" name = "n2" value = "<%=n2 %>" readonly="readonly"></td>
		</tr>
		<tr>
						<td><%=n1 %> * <%=n2 %> = <%=n1*n2 %></td> 
						<td><input type="submit" value="나눗셈"></td>		
		</tr>
		</table>
</form>
</body>
</html>