<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 명단 리스트</title>
</head>
<body>
<h3>고객명단 리스트</h3>
	<%
	//request할게 아니니 필요없음
	String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	String query = "select userid,name,tel,address,insertdate from purchaserinfo"; //table의 data전부 가져오기
	//문자면 홑따옴표 찍어줘야 함(id 양 옆에)
	
	int count=0; //데이터의 갯수(=총인원수)를 세기 위해 변수를 저장
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		//다운받아놓은 mysql jar 파일
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		//연결 수행
		Statement stmt_mysql = conn_mysql.createStatement();
		
		ResultSet rs = stmt_mysql.executeQuery(query);
		
	%>
		<table border="1">
			<tr>
				<th>UserID</th><th>이름</th><th>전화번호</th><th>주소</th><th>입력일자</th>
			</tr>

	<%	
		while(rs.next()){	//record(한줄씩)단위로 데이터 가져옴
	%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><a href="purchaserSelect02.jsp?userid=<%=rs.getString(1) %>"><%=rs.getString(2) %></a></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
		</tr>
	<%		
		count++;
		}
	%>
		</table>
		<br>
		총 인원은 <%= count %>명 입니다
	<% 	
		conn_mysql.close();
		//데이터베이스 연결 끊는다
		
	}catch(Exception e){
		e.printStackTrace();
	}
	%>	
</body>
</html>