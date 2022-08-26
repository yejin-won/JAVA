<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력하기</title>
</head>
<body>
	<h3>아래의 항목을 입력 후 확인 버튼을 누르세요!</h3>
	<br>
	<form action="Query02_1.jsp">
	<table>
	<tr>
		<td>성명 :</td> <td><input type="text" name="name" size="5"></td> 
	</tr>
	<tr>
		<td>전화번호 :</td> <td><input type="text" name="phone" size="15"></td>
	</tr>
	<tr>
		<td>주소 :</td> <td><input type="text" name="address" size="30"></td>
	</tr>
	<tr>
		<td>이메일 :</td> <td><input type="text" name="email" size="30"></td>
	</tr>
	<tr>
		<td>관계 :</td> <td><input type="text" name="relationship" size="30"></td>
	</tr>
	<tr><td>&nbsp;</td></tr>
	<tr>
		<td></td>
		<td><input type="submit" value="확인"></td>
	</tr>
	</table>
	</form>
</body>
</html>