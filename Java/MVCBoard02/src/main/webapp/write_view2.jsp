<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>글작성</h2>
	<table border="0">
		<form action = "write2.do" method="post">
			<tr>
				<td>이름</td>
				<td><input type="text" name="oName" size="50"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="oTitle" size="50"></td>
			</tr>
			<tr>
				<td colspan="2"><input type ="submit" value="입력">
				<a href="list2.do">목록보기</a></td>
			</tr>
		</form>
	</table>

</body>
</html>