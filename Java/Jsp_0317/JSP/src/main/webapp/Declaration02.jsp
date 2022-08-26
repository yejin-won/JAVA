<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2의 거듭제곱</title>
</head>
<body>
<%!
	public int multi(int b){
		int n = 1;
		for(int i=1;i<=b;i++){
			n*=2;
		}
		return n;
}
%>
	2 ^ 1 = <%=multi(1) %><br> <!--n=1로 초기화 ->multi(1)인 경우, 2를 반환--> 
	2 ^ 2 = <%=multi(2) %><br> <!--n=2로 반환되었으므로 n값은 2 ->multi(2)인 경우, 4를 반환--> 
	2 ^ 3 = <%=multi(3) %><br> <!--n=4로 반환되었으므로 n값은 4 ->multi(3)인 경우, 8를 반환--> 
	2 ^ 4 = <%=multi(4) %><br> <!--n=8로 반환되었으므로 n값은 4 ->multi(3)인 경우, 16를 반환--> 
	2 ^ 5 = <%=multi(5) %><br> <!--n=16로 반환되었으므로 n값은 4 ->multi(3)인 경우, 32를 반환--> 

</body>
</html>