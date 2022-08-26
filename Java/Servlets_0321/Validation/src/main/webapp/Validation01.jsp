<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!--Java Script-->
<script type="text/javascript">
	function checkForm() {  <!--ID/PW화면 띄우는 역할-->
			alert("아이디 :" +document.loginForm.id.value <!--body(=doc.)의 id라는 값을 부르기 위해...-->
			+"\n"+"패스워드 :" +document.loginForm.pw.value)
	}
</script>
<body>
	<form name="loginForm" action="#">
		<p>아이디 : <input type="text" name="id"></p>
		<p>패스워드 : <input type="password" name="pw"></p>		 
		<p><input type="button" value="전송" onclick="checkForm()"></p>
	</form>
</body>
</html>