<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>    

<%
	request.setCharacterEncoding("utf-8");
	
	String Seq = request.getParameter("Seq");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String relationship = request.getParameter("relationship");

	session.setAttribute("Seq", Seq);
	
	
	String url_mysql = "jdbc:mysql://localhost:3306/AddressBook?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql="qwer1234";
	
	PreparedStatement ps = null;
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql,id_mysql,pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "delete from addresslist where Seq = ?";
		
		ps = conn_mysql.prepareStatement(A);
		
		ps.setString(1,Seq); //userid가 ?에 들어감	
	
		ps.executeUpdate();	//실행됨
		
		conn_mysql.close(); //연결 끊기
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
		response.sendRedirect("Query_04_01.jsp");
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