<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>process</title>
</head>
<body>
<%
	int age = Integer.parseInt(request.getParameter("inputAge"));
 	String title=URLEncoder.encode("성인","UTF-8");
	String str=URLEncoder.encode("가능","UTF-8");
		
	if(age>18){	
		response.sendRedirect("http://localhost:8080/JSP/ResponseAge_05.jsp?age1="+age+"&title1="+title+"&str1="+str);
		
	}else{
		title=URLEncoder.encode("미성년자","UTF-8");
		str=URLEncoder.encode("불가능","UTF-8");
		response.sendRedirect("http://localhost:8080/JSP/ResponseAge_05.jsp?age1="+age+"&title1="+title+"&str1="+str);

	}
%>
</body>
</html>