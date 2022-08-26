<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 및 삭제</title>
</head>
<script type="text/javascript">
	function del(bid){
		if(confirm("삭제하시겠습니까?")){
			location.href = "delete.do?bId=" + bid;
		}
	}
</script>
<body>
	<h2>글 수정 및 삭제</h2>
	<form action="modify.do" method="post">
	<table border="0">
			<tr>
				<td>번호</td>
				<td><input type="text" name="bId" size="5" value="${content_view.bId }"></td>
			</tr>
			
			<tr>
				<td>이름</td>
				<td><input type="text" name="bName" size="5" value="${content_view.bName }"></td>
			</tr>
			
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" size="50" value="${content_view.bTitle }"></td>
			</tr>
			
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="50" name="bContent" >${content_view.bContent }"</textarea></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="수정">&nbsp;&nbsp;&nbsp;
				<input type="button" value="삭제" onclick="del(${content_view.bId })">&nbsp;&nbsp;&nbsp;
				<a href="list.do">목록보기</a>
				
				
			</td>
			</tr>
			
		
			
	</table>
	</form>
</body>
</html>