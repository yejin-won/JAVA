<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<script type="text/javascript">
		function checkLogin() {
			var form = document.loginForm
			for(i=0;i<form.id.value.length;i++){
				var ch = form.id.value.charAt(i);
				if((ch<'a' || ch>'z')&&(ch>'A' || ch<'Z')&&(ch>'0' || ch<'9')){ <!--A n (B u C)-->
					alert("아이디는 영문 소문자만 입력 가능 합니다.")
					form.id.select()
					return false
				}
			for(i=0;i<form.passwd.value.length;i++){
				var ch1 = form.passwd.value.charAt(i);
				if((ch1<'0' || ch1>'9')){
					alert("비밀번호는 숫자만 입력 가능 합니다.")
					form.passwd.select()
					return false
				}
				form.submit()
			}
			}
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