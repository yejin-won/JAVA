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
		<td align="right">사용자 ID :</td> <td><%=request.getAttribute("USERID") %><br></td>
	</tr>
	<tr>
		<td align="right">성명 :</td> <td><%=request.getAttribute("NAME") %><br></td>
	</tr>
	<tr>
		<td align="right">전화번호 :</td> <td><%=request.getAttribute("TEL") %><br></td>
	</tr>
	<tr>
		<td align="right">주소 :</td> <td><%=request.getAttribute("ADDRESS") %><br></td>
	</tr>
	</table>
	<br>
	<br>
	상기의 정보로 입력되었습니다. 감사합니다.
</body>
</html>