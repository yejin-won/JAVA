<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI Calculator</title>
</head>
<body>
	<form action="bmiResult.jsp" method = "get">
		<table style="border:green solid 2px ">
		<tr>
		<td style="color:#2F4F4F" align="left">키(cm) :</td> <td><input type="text" name = "heightCm" size = "5"><br></td>
		<tr>
		<td style="color:#2F4F4F">kg : </td> <td><input type="text" name = "weightKg" size = "5"><br></td>
		</tr>
		<tr>
			<td colspan = "2" align="right"> <input type="submit" value = "Calc BMI"></td>
		</tr>
		</table>
		</form>
</body>
</html>