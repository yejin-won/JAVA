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
	String name = "";
	String phone = "";
	String address = "";
	String email = "";
	String relationship = "";

	//밑에는 사용자가 바꾼 유저 ID임

	String url_mysql = "jdbc:mysql://localhost:3306/AddressBook?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	String query = "select name, phone, address, email, relationship from addresslist where Seq = " + Seq ;

	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();
		
		ResultSet rs = stmt_mysql.executeQuery(query);
		
		while(rs.next()){
			name=rs.getString(1);
			phone=rs.getString(2);
			address=rs.getString(3);
			email=rs.getString(4);
			relationship=rs.getString(5);
		}
		
		conn_mysql.close();
		
		session.setAttribute("OLDname", name);
		session.setAttribute("OLDphone", phone);
		session.setAttribute("OLDaddress", address);
		session.setAttribute("OLDemail", email);
		session.setAttribute("OLDrelationship", relationship);

	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
%>
	<form action="Query03_1.jsp" method="post">
	<table>
	<tr>
	<td align="right">Seq :</td> <td><input type="text" name="Seq" value="<%=Seq %>" size="5" readonly="readonly"><br></td>
	</tr>
	<tr>
	<td align="right">이름 :</td> <td><input name="name" value="<%=name %>" size="5"><br></td>
	</tr>
	<tr>
	<td align="right">전화번호 :</td> <td><input name="phone" value="<%=phone %>" size="20"><br></td>
	</tr>
	<tr>
	<td align="right">주소 :</td> <td><input name="address" value="<%=address %>" size="30"><br></td>
	</tr>
	<tr>
	<td align="right">전자우편 :</td> <td><input name="email" value="<%=email %>" size="30"><br></td>
	</tr>
	<tr>
	<td align="right">관계 :</td> <td><input name="relationship" value="<%=relationship %>" size="30"><br></td>
	</tr>
	<tr><td>&nbsp;</td></tr>
	<tr>
		<td></td>
		<td align="left"><input type="submit" value="확인"></td>
	</tr>
	</table>
	</form>
</body>
</html>