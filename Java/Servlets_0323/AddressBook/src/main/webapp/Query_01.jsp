<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 관리: 홈</title>
</head>
<body>
<h1>주소록 명단 리스트</h1>

<%

	String url_mysql = "jdbc:mysql://192.168.150.135:3306/mysql/Teamplay?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	int count = 0;
	String query = "select Seq, name, phone, address, email, relationship from AddressBook";
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql= DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();


		ResultSet rs = stmt_mysql.executeQuery(query);
%>



<table border="1">
		<tr>
		<th>Seq</th>
		<th>이름</th>
		<th>전화번호</th>
		<th>주소</th>
		<th>전자우편</th>
		<th>관계</th>
		</tr>
<%

while(rs.next()){
count +=1;

%>

		<tr>
			<td><a href="http://192.168.150.135:8080/JSP/query_005.jsp?Seq=<%=rs.getString(1)%>"><%=rs.getString(1) %></a></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
		</tr>
		
		<%
		}
%>
		
</table>

<% 		
		conn_mysql.close();		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	%>

		<form action="http://192.168.150.135:8080/JSP/query_03.jsp" method="post">

		<input type="submit" value="입력하기">
	</form>
	
<h2> 총 인원은 4명 입니다.</h2>


</body>
</html>