<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.alignRight{
		text-align: right;
	}
</style>
</head>
<script type="text/javascript">
function update(Seq){
	location.href = "Query03.jsp?Seq="+Seq;
}
function del(Seq){
	location.href = "Query04.jsp?Seq="+Seq;
}
</script>
<%

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

PreparedStatement ps = null;

String query = "select name, phone, address, email, relationship from addresslist where Seq = " + Seq ;
//문자면 홑따옴표 찍어줘야 함(id 양 옆에)

try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		//다운받아놓은 mysql jar 파일
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		//연결 수행
		Statement stmt_mysql = conn_mysql.createStatement();
		
		ResultSet rs = stmt_mysql.executeQuery(query);
		
		while(rs.next()){
			name = rs.getString(1);
			phone = rs.getString(2);
			address = rs.getString(3);
			email = rs.getString(4);
			relationship = rs.getString(5);
		}
		
		conn_mysql.close();
		//데이터베이스 연결 끊는다
		
		
	}catch(Exception e){
		e.printStackTrace();
	}

%>
<body>
	<h3>아래의 정보를 확인하고 수정 또는 삭제를 선택해주세요</h3>
	<table>
		<tr>
			<td class="alignRight">Seq : </td>
			<td><%= request.getParameter("Seq") %></td>
		</tr>
		<tr>
			<td class="alignRight">성명 : </td>
			<td><%= name %></td>
		</tr>
		<tr>
			<td class="alignRight">전화번호 : </td>
			<td><%= phone %></td>
		</tr>
		<tr>
			<td class="alignRight">주소 : </td>
			<td><%= address %></td>
		</tr>
		<tr>
			<td class="alignRight">전자우편 : </td>
			<td><%= email %></td>
		</tr>
		<tr>
			<td class="alignRight">관계 : </td>
			<td><%= relationship %></td>
		</tr>
		<tr>
			<td ></td>
			<td>
	 			<input type="button" value="수정" onclick="update('<%=request.getParameter("Seq")%>')"><br>
				<input type="button" value="삭제" onclick="del('<%=request.getParameter("Seq")%>')">
			</td>
		</tr>
	</table>
</body>
</html>