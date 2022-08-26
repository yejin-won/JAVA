<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<% 
	request.setCharacterEncoding("utf-8");
	int id = Integer.parseInt(request.getParameter("id"));
	String strUserid = "";
	
	String url_mysql = "jdbc:mysql://localhost:3306/eclipse?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	String query = "select userid from wtest where id = " + id;
	//문자면 홑따옴표 찍어줘야 함(id 양 옆에)
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		//다운받아놓은 mysql jar 파일
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		//연결 수행
		Statement stmt_mysql = conn_mysql.createStatement();
		
		ResultSet rs = stmt_mysql.executeQuery(query);
		
		while(rs.next()){
			strUserid = rs.getString(1);
		}
		
		conn_mysql.close();
		//데이터베이스 연결 끊는다
		session.setAttribute("OLD" ,strUserid);
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정화면</title>
</head>
<body>
	<h3>수정 후 확인 버튼을 누르세요</h3>
	<form action="updateTest03.jsp" method="post">
		사용자ID : <input name="userid" size="10" value="<%=strUserid %>"><br>
		<input type="submit" value="수정">
	</form>
	
	
</body>
</html>