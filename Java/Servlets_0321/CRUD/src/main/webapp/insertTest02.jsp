<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<%
	String userid =request.getParameter("userid");
	
	String url_mysql = "jdbc:mysql://localhost:3306/eclipse?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql="qwer1234";
	
	//CRUD에서 Read만 방법 2가지 나머지는 동일
	
	PreparedStatement ps = null; 
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql,id_mysql,pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "insert into wtest (userid";
		String B = ") values (?)";
		
		ps = conn_mysql.prepareStatement(A+B);
		ps.setString(1, userid); //userid가 ?에 들어감
		ps.executeUpdate();	//실행됨
		
		conn_mysql.close(); //연결 끊기
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("insertTest03.jsp");
%>
