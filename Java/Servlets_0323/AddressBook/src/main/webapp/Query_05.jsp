<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	location.href = "Query_03.jsp?Seq="+Seq;
}
function del(Seq){
	location.href = "Query_04.jsp?Seq="+Seq;
}

</script>
<body>
	<h3>아래의 정보를 확인하고 수정 또는 삭제를 선택해주세요</h3>
	<table>
		<tr>
			<td class="alignRight">성명 : </td>
			<td><%= request.getParameter("Seq") %></td>
		</tr>
		<tr>
			<td class="alignRight">성명 : </td>
			<td><%= request.getParameter("name") %></td>
		</tr>
		<tr>
			<td class="alignRight">전화번호 : </td>
			<td><%= request.getParameter("phone") %></td>
		</tr>
		<tr>
			<td class="alignRight">주소 : </td>
			<td><%= request.getParameter("address") %></td>
		</tr>
		<tr>
			<td class="alignRight">전자우편 : </td>
			<td><%= request.getParameter("email") %></td>
		</tr>
		<tr>
			<td class="alignRight">관계 : </td>
			<td><%= request.getParameter("relationship") %></td>
		</tr>
		<tr>
			<td ></td>
			<td>
				<input type="button" value="수정" onclick="update('<%=request.getParameter("Seq")%>')">
				<input type="button" value="삭제" onclick="del('<%=request.getParameter("Seq")%>')">
			</td>
		</tr>
	</table>
</body>
</html>