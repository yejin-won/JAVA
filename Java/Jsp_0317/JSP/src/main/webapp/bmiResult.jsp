<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI Result</title>
</head>
<body>
<%
	int height ,weight;
	double bmiVal = 0;
	String result = "";

	height = Integer.parseInt(request.getParameter("heightCm"));
	weight = Integer.parseInt(request.getParameter("weightKg"));
	double height1=(double)height/100;
	
	
	bmiVal = (double)weight / (height1 * height1);
	
	result +="입력한 키는 "+ height +" 이고 <br> 입력한 몸무게는 " + weight + "이므로 <br>";
	
	if(bmiVal>=40){
		result += "당신의 bmi수치는 "+ String.format("%.3f",bmiVal) + "이며<br> 결과는 고도비만입니다" ;
	}else if(bmiVal>=25){
		result += "당신의 bmi수치는 "+ String.format("%.3f",bmiVal) + "이며<br> 결과는 비만입니다" ;
	}else if(bmiVal>=23){
		result += "당신의 bmi수치는 "+ String.format("%.3f",bmiVal) + "이며<br> 결과는 과체중입니다" ;
	}else if(bmiVal>=19){
		result += "당신의 bmi수치는 "+ String.format("%.3f",bmiVal) + "이며<br> 결과는 정상입니다" ;
	}else{
		result += "당신의 bmi수치는 "+ String.format("%.3f",bmiVal) + "이며<br> 결과는 저체중입니다" ;
	}
	
%>
	<%=result %><br>
	<img alt = "비만사진" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fpost.phinf.naver.net%2FMjAyMTA5MTBfNTAg%2FMDAxNjMxMjUzNjEzNjQ4.qAFzFVzck75W49TBWMLrgpO5fgRjlPur6DOU0A6F6JQg.H3RYKVq7Ah1dMU9oBHeGZktEdGc60p6g5a2tcDs8gcUg.PNG%2FIoijB4gE4j7K0OqRO1P4cq1uHSvw.jpg&type=sc960_832">
	
	
</body>
</html>