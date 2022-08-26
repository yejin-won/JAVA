<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품선택</title>
</head>
<body>
	<form action="cart_02.jsp" method="get">
	<table>
		<tr>
		<td>수량 :</td><td><input type="text" name="amount"></td> 
		</tr>
		
		<tr>
		<td>크기 :</td><td>대<input type="radio" name ="size" value="대" checked="checked">
							중<input type="radio" name="size" value="중">
							소<input type="radio" name="size" value="소"></td>
		</tr>
		
		<tr>
		<td>색상 :</td><td><select name="color">
							<option selected="selected">베이지</option>
							<option>브라운</option>
							<option>카키</option>
							</select></td>	
		</tr>
		<tr>
				<td><input type ="submit" value="저장"></td> 
							
		</tr>
	</table>
	</form>
</body>
</html>