<%@page import="org.apache.taglibs.standard.tag.common.sql.SetDataSourceTagSupport"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String Seq = request.getParameter("Seq");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String relationship = request.getParameter("relationship");

	//밑에는 사용자가 바꾼 유저 ID임

	String url_mysql = "jdbc:mysql://localhost:3306/AddressBook?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	PreparedStatement ps = null;

	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();
		
		// 바뀔 data가 앞에(?)에 쓴다. Data가 두개면 ?가 두개
		String A = "update addresslist set name = ?, phone = ?, address = ?, email = ?,  relationship = ? where Seq = ?";
				
		
		//위에 new & old관련 session Attribute 사용하고 싶으면 setting 된 함수명을 써야 함 ex) newNew, newTel ...
		ps = conn_mysql.prepareStatement(A);
		ps.setString(1, name);
		ps.setString(2, phone);
		ps.setString(3, address);
		ps.setString(4, email);
		ps.setString(5, relationship);
		ps.setString(6, Seq);
		ps.executeUpdate();

		conn_mysql.close();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("Query01.jsp");	
%>
	
</body>
</html>