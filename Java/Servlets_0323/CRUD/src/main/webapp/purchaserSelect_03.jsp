<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  request.setCharacterEncoding("utf-8");
	
	String userid = request.getParameter("userid"); 
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");
	
	session.setAttribute("NEWName", name);
	session.setAttribute("NEWTel", tel);
	session.setAttribute("NEWAddress", address);
	
	String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql="qwer1234";
	
	PreparedStatement ps = null; 
	
	String newName = (String)session.getAttribute("NEWName");
	String newTel = (String)session.getAttribute("NEWTel");
	String newAddress = (String)session.getAttribute("NEWAddress");
	
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql,id_mysql,pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "update purchaserinfo set name = ?, tel= ? , address = ? where userid = ?";
		
		ps = conn_mysql.prepareStatement(A);
		ps.setString(1,newName); 
		ps.setString(2,newTel); 
		ps.setString(3,newAddress); 
		ps.setString(4,userid); 
				
		ps.executeUpdate();	//실행됨
		
		conn_mysql.close(); //연결 끊기
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("purchaserSelect_01.jsp");
%>
	
</body>
</html>