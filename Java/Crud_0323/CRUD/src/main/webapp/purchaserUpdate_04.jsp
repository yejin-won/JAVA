<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
	<tr>
		<td align="right">사용자 ID :</td> <td><%=session.getAttribute("USERID") %></td> 
	</tr>
	<tr>
		<td align="right">성명 :</td> <td><%=session.getAttribute("NEWName") %></td>
	</tr>
	<tr>
		<td align="right">전화번호 :</td> <td><%=session.getAttribute("NEWPhone") %></td>
	</tr>
	<tr>
		<td align="right">주소 :</td> <td><%=session.getAttribute("NEWAddress") %></td>
	</tr>
	<tr><td>&nbsp;</td></tr>
	</table>
	<br>
	<br>
	<h4>상기의 정보로 수정되었습니다.감사합니다.</h4>
</body>
</html>