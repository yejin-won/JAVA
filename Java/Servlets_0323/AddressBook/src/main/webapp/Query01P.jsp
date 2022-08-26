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
	String queryName = request.getParameter("query");
	String queryContent = request.getParameter("content");

	if(queryName == null){
		queryName="address";
		queryContent = "";	
	}

	String url_mysql = "jdbc:mysql://localhost:3306/AddressBook?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	String WhereDefault = "select Seq, name, phone, address, email, relationship from addresslist ";
	String WhereDefault2 = "where" + queryName + " like '%" +queryContent + " %'";
	
	int count = 0;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql= DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();

		ResultSet rs = stmt_mysql.executeQuery(WhereDefault+WhereDefault2);
%>
	<form action="Query01.jsp">
	<select name="query">
		<option value="name">이름</option>
		<option value="phone">전화번호</option>
		<option value="address" selected="selected">주소</option>
		<option value="relationship">관계</option>
	</select>
		<input type="text" name="content" size="30">
		<input type="submit" value="검색">	
		</form>
	<hr>
	<table border="1">
		<tr>
		<th>Seq</th><th>이름</th><th>전화번호</th><th>주소</th><th>전자우편</th><th>관계</th>
		</tr>
<%

	while(rs.next()){

%>
		<tr>
			<td><a href="Query05.jsp?Seq=<%=rs.getString(1)%>"><%=rs.getString(1) %></a></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
		</tr>
		
		<%
			count++;
		}
%>
		
	</table>
		<br>
		<input type="submit" value="입력"><br>
		<hr>
	 	총 인원은 <%=count %>명 입니다.

<% 		
		conn_mysql.close();		
			
		}catch(Exception e){
			e.printStackTrace();
		}
	
	%>
	

</body>
</html>