<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkLogin() {
		var form= document.loginForm
		if(form.id.value.length<4 || form.id.value.length>12){
			alert("아이디는 4~12자 이내로 입력 가능합니다.")
			form.id.select()
			return
		}else if(form.passwd.value.length<4 || form.passwd.value.length>12){
			alert("비밀번호는 4~12자 이내로 입력 가능합니다.")
			form.passwd.select()
			return
		}
		form.submit()
	}
</script>
<body>
	<form name="loginForm" action="validation02P.jsp" method="post">
		아이디 : <input type="text" name="id"><br>
	 	비밀번호 : <input type="password" name="passwd"><br>
	 	<input type="button" value="OK" onclick="checkLogin()">
	</form>
</body>
</html>