<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String userid =request.getParameter("userid");
	String name =request.getParameter("name");
	String phone =request.getParameter("phone");
	String address =request.getParameter("address");
	String email =request.getParameter("address");
	String relationship =request.getParameter("relationship");
	
	session.setAttribute("USERID", userid); 
	session.setAttribute("NAME", name); 
	session.setAttribute("PHONE", phone); 
	session.setAttribute("ADDRESS", address); 
	session.setAttribute("RELATIONSHIP", relationship); 
	
	String url_mysql = "jdbc:mysql://localhost:3306/AddressBook?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql="qwer1234";
	
	PreparedStatement ps = null; 
	
	try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn_mysql = DriverManager.getConnection(url_mysql,id_mysql,pw_mysql);
	Statement stmt_mysql = conn_mysql.createStatement();
	
	String A = "insert into addresslist (Seq, name, phone, address, email, relationship";
	String B = ") values (?,?,?,?,?,?)";
	
	ps = conn_mysql.prepareStatement(A+B);
	ps.setString(1, userid); //userid가 ?에 들어감
	ps.setString(2, name); //userid가 ?에 들어감
	ps.setString(3, phone); //userid가 ?에 들어감
	ps.setString(4, address); //userid가 ?에 들어감
	ps.setString(5, email); //userid가 ?에 들어감
	ps.setString(6, relationship); //userid가 ?에 들어감
	ps.executeUpdate();	//실행됨
	
	conn_mysql.close(); //연결 끊기
	
	}catch(Exception e){
	e.printStackTrace();
	}
	
	response.sendRedirect("http://192.168.5.55:8080/AddressBook/Query_01.jsp");
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