<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
 
    
<% 
	request.setCharacterEncoding("utf-8");
	String userid = request.getParameter("userid");
	String strName = "";
	String strPhone = "";
	String strAddress = "";
	
	String url_mysql = "jdbc:mysql://localhost:3306/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	String query = "select name,tel,address from purchaserinfo where userid = '" + userid +"'";
	//문자면 홑따옴표 찍어줘야 함(id 양 옆에)
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		//다운받아놓은 mysql jar 파일
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		//연결 수행
		Statement stmt_mysql = conn_mysql.createStatement();
		
		ResultSet rs = stmt_mysql.executeQuery(query);
		
		while(rs.next()){
			strName = rs.getString(1);
			strPhone = rs.getString(2);
			strAddress = rs.getString(3);
		}
		
		conn_mysql.close();
		//데이터베이스 연결 끊는다
		session.setAttribute("OLDName" ,strName);
		session.setAttribute("OLDPhone" ,strPhone);
		session.setAttribute("OLDAddress" ,strAddress);
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>수정 후 확인 버튼을 누르세요!</h3>
	<form action="purchaserUpdate_03.jsp" method="post">
	<table>
	<tr>
	<td align="right">사용자 ID :</td> <td><input type="text" name="userid" value="<%=userid %>" size="5" readonly="readonly"><br></td>
	</tr>
	<tr>
	<td align="right">성명 :</td> <td><input name="name" value="<%=strName %>" size="5"><br></td>
	</tr>
	<tr>
	<td align="right">전화번호 :</td> <td><input name="phone" value="<%=strPhone %>" size="20"><br></td>
	</tr>
	<tr>
	<td align="right">주소 :</td> <td><input name="address" value="<%=strAddress %>" size="45"><br></td>
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