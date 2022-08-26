<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>one line 게시판</title>
</head>
<style>
html, body{
height: 100%;
margin:0;
}
h1{
margin:0;
}
.parent{
position:relative;
height: 100%;
}
.child{
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);

}

  </style>
<script type="text/javascript">
	function del(oId) {
		alert("삭제하시겠습니까?")		
	}
</script>
<body>
	<div class="parent">
	<h1>one line 게시판</h1>
	<table class="child" border = "1" style="margin-left:auto;margin-right:auto;">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>제목</th>
			<th>날짜</th>
			<th>삭제</th>
		</tr>
		<c:forEach items = "${list }" var="dto2">
			<tr>
				<td>${dto2.oId }</td>
				<td>${dto2.oName }</td>
				<td>${dto2.oTitle }</td>
				<td>${dto2.oDate }</td>
				<td><a href="delete2.do?oId=${dto2.oId }" onclick="del(${dto2.oId })">X</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5"><a href="write_view2.do">글작성</a></td>
		</tr>
	</table>
	</div>
</body>
</html>