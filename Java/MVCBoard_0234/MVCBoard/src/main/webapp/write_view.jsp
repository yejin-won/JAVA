<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>
</head>
<body>
	<h2>글작성</h2>
	<table border="0">
		<form action = "write.do" method="post">
			<tr>
				<td>이름</td>
				<td><input type="text" name="bName" size="20"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" size="50"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name ="bContent" rows ="10" cols="50"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type ="submit" value="입력"></td>
			</tr>
		</form>
	</table>
</body>
</html>