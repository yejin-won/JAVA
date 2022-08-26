<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<body>
<%
 	request.setCharacterEncoding("utf-8");
	String userid =request.getParameter("userid");
	String name =request.getParameter("name");
	String tel =request.getParameter("tel");
	String address =request.getParameter("address");
	
	request.setAttribute("USERID", userid); 
	request.setAttribute("NAME", name); 
	request.setAttribute("TEL", tel); 
	request.setAttribute("ADDRESS", address); 
	
	String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql="qwer1234";

	PreparedStatement ps = null; 
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql,id_mysql,pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "insert into purchaserinfo (userid, name, tel, address, insertdate";
		String B = ") values (?,?,?,?,now())";
		
		ps = conn_mysql.prepareStatement(A+B);
		ps.setString(1, userid); //userid가 ?에 들어감
		ps.setString(2, name); //userid가 ?에 들어감
		ps.setString(3, tel); //userid가 ?에 들어감
		ps.setString(4, address); //userid가 ?에 들어감
		ps.executeUpdate();	//실행됨
		
		conn_mysql.close(); //연결 끊기
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	RequestDispatcher rd = request.getRequestDispatcher("purchaserInsert_03.jsp");
	rd.forward(request, response);
	
%>
