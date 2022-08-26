<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition</title>
</head>
<body>
<%
	int a = 30;
	int b = 20;
	int addition = a + b;
	int subtration = a - b;
	int multiplication = a * b;
	int division = a / b;
	int remainder = a % b;
%>
<%=a %> + <%=b %> = <%=addition %><br>
<%=a %> - <%=b %> = <%=subtration %><br>
<%=a %> * <%=b %> = <%=multiplication %><br>
<%=a %> / <%=b %> = <%=division %><br>
<%=a %> % <%=b %> = <%=remainder %><br>
<p></p>
<%
	out.println(a + " + " + b + " = " +addition + "<br>");
	out.println(a + " - " + b + " = " +subtration + "<br>");
	out.println(a + " * " + b + " = " +multiplication + "<br>");
	out.println(a + " / " + b + " = " +division + "<br>");
	out.println(a + " % " + b + " = " +remainder + "<br>");
%>

</body>
</html>