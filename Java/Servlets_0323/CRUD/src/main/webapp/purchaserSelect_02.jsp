<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.*" %>

<% 
	request.setCharacterEncoding("utf-8");
	String userid =request.getParameter("userid");
	String strName = request.getParameter("name");
	String strTel = request.getParameter("tel");
	String strAddress = request.getParameter("address");
	String strInsertdate = request.getParameter("insertdate");
	
	session.setAttribute("NEWName", strName);
	session.setAttribute("NEWTel", strTel);
	session.setAttribute("NEWAddress", strAddress);
	
	String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
PreparedStatement ps = null;
	
	String newName = (String)session.getAttribute("NEWName");
	String newPhone = (String)session.getAttribute("NEWTel");
	String newAddress = (String)session.getAttribute("NEWAddress");
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql,id_mysql,pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "update purchaserinfo set name = ?, tel=?, address=? where userid = ?";
		
		ps = conn_mysql.prepareStatement(A);
		
		ps.setString(1,newName); //userid가 ?에 들어감
		ps.setString(2,newPhone); 
		ps.setString(3,newAddress); 
		ps.setString(4,userid); 
		
	
		ps.executeUpdate();	//실행됨
		
		conn_mysql.close(); //연결 끊기
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객명단 수정 및 삭제</title>
</head>

<body>
	<h3>고객명단 수정 및 삭제</h3>
	<form action="purchaserSelect_01.jsp" method="post">
	<table>
		<tr>
		<td align="right">사용자 ID :</td> <td><input type="text" name="userid" value="<%=userid %>" size="10" readonly="readonly"><br></td>
		</tr>
		<tr>
		<td align="right">성명 :</td> <td><input type="text" name="name" value="<%=strName %>" size="10"><br></td>
		</tr>
		<tr>
		<td align="right">전화번호 :</td> <td><input type="text" name="tel" value="<%=strTel %>" size="20"><br></td>
		</tr>
		<tr>
		<td align="right">주소 :</td> <td><input type="text" name="addresss" value="<%=strAddress %>" size="30"><br></td>
		</tr>
		<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
		<tr>
		<td></td>
		<td><input type="submit" value="수정"></td>
		</tr>
	</table>
	</form>
</body>
</html>