<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>    

<%
	request.setCharacterEncoding("utf-8");
	
	String userid = request.getParameter("userid");
	String strName = request.getParameter("name");
	String strPhone = request.getParameter("phone");
	String strAddress = request.getParameter("address");

	session.setAttribute("USERID", userid);
	
	
	String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql="qwer1234";
	
	PreparedStatement ps = null;
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql,id_mysql,pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "delete from purchaserinfo where userid = ?";
		
		ps = conn_mysql.prepareStatement(A);
		
		ps.setString(1,userid); //userid가 ?에 들어감	
	
		ps.executeUpdate();	//실행됨
		
		conn_mysql.close(); //연결 끊기
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
		response.sendRedirect("purchaserDelete04.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>