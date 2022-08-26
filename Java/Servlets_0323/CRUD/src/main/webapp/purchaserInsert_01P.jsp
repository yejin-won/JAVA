<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkInfo() {
		var regExpId = /[^a-z]+$/
		var regExpName = /^[가-힣]*$/
		var regExpPhone = /^[0-9]*$/
		var regExpAddress = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|0-9]+$/
		
		var form = document.Info
		
		var userid = form.userid.value
		if(!regExpId.test(userid)){
			alert("아이디는 대소문자만 입력 가능합니다.");
			form.userid.select();
			return false
		}
		var name = form.name.value
		if(!regExpName.test(name){
			alert("성명은 한글만 입력 가능합니다.")
			form.name.select()
			return false
		}
		var tel = form.tel.value
		if(!regExpPhone.test(tel)){
			alert("연락처 입력을 확인해주세요.")
			form.tel.select()
			return false
		}
		var address = form.address.value
		if(!regExpAddress.test(address)){
			alert("주소 입력을 확인해주세요.")
			form.address.select()
			return false
		}
		form.submit()
	}
</script>
<body>
	<h3>아래의 항목을 입력 후 확인 버튼을 누르세요!</h3>
	<form name="Info" action="purchaserInsert_02P.jsp" method="post">
	<table>
		<tr>
		<td align="right">사용자 ID :</td> <td><input type="text" name="userid" size="10"><br></td>
		</tr>
		<tr>
		<td align="right">성명 :</td> <td><input type="text" name="name" size="10"><br></td>
		</tr>
		<tr>
		<td align="right">전화번호 :</td> <td><input type="text" name="tel" size="20"><br></td>
		</tr>
		<tr>
		<td align="right">주소 :</td> <td><input type="text" name="address" size="30"><br></td>
		</tr>
		<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
		<tr>
		<td></td>
		<td><input type="submit" value="확인" onclick="checkInfo()"></td>
		</tr>
	</table>
	</form>
</body>
</html>