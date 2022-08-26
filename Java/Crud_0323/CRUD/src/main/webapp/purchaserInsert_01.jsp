<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>아래의 항목을 입력 후 확인 버튼을 누르세요!</h3>
	<form action="purchaserInsert_02.jsp" method="post">
	<table>
		<tr>
		<td align="right">사용자 ID :</td> <td><input type="text" name="userid" size="10"><br></td>
		</tr>
		<tr>
		<td align="right">성명 :</td> <td><input type="text" name="name" size="10"><br></td>
		</tr>
		<tr>
		<td align="right">전화번호 :</td> <td><input type="text" name="tel" size="20"><br></td>
		</tr>
		<tr>
		<td align="right">주소 :</td> <td><input type="text" name="address" size="30"><br></td>
		</tr>
		<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
		<tr>
		<td></td>
		<td><input type="submit" value="확인"></td>
		</tr>
	</table>
	</form>
</body>
</html>
