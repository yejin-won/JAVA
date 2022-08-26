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
		var form = document.loginForm
		if(form.id.value==""){ <!--ID를 입력 안 할 경우-->
			alert("아이디를 입력해 주세요.")
			form.id.focus() <!--ID입력 안 하고 OK를 누른 뒤 창을 팝업창을 끄면 커서가 아이디에 있음-->
			return false
		}else if(form.passwd.value==""){
			alert("비밀번호를 입력해 주세요.")
			form.passwd.focus()
			return false
		}
		form.submit()
	}
</script>
<body>
	<form name="loginForm" action="validation02P.jsp">
	 	아이디 : <input type="text" name="id"><br>
	 	비밀번호 : <input type="password" name="passwd"><br>
	 	<input type="button" value="OK" onclick="checkLogin()">
	</form>
</body>
</html>