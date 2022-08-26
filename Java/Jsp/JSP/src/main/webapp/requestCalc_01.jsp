<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>
	계산을 위한 숫자를 입력하세요.
	<br>
	<form action="requestCalc_02.jsp" method = "get">
	
	<!-- select를 이용해 n까지 숫자 나오게 하여 옵션만들기 -->
	숫자 1 :
	
	<select name = "number1"> 
<%
	int i;
	for(i=0;i<=100;i++){
		out.print("<option>"+i+"</option>");
	}	
%>	
	</select><br>

	숫자 2 :
	
	<select name = "number2">
<%
	int j;
	for(j=0;j<=100;j++){
		out.print("<option>"+j+"</option>");
	}
%>	
	</select><br>

	계산방법 :<br> <input type="checkbox" name = "calcWay" value = "덧셈" checked="checked">덧셈<br>
				<input type="checkbox" name = "calcWay" value = "뺄셈">뺄셈<br>
					<input type="checkbox" name = "calcWay" value = "곱셈">곱셈<br>
						<input type="checkbox" name = "calcWay" value = "나눗셈">나눗셈<br>
		<input type="submit" name = "button" value = "계산 ">
	</form>
</body>
</html>