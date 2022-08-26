<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사하기</title>
</head>
<body>
	<c:if test= "${param.num1==0 }">
		처음 뵙겠습니다.<br>
	</c:if>
	
	<c:if test= "${param.num1==1 }">
		반갑습니다.<br>
	</c:if>
	
	<c:if test= "${param.num1==2 }">
		안녕하세요.<br>
	</c:if>
</body>
</html>