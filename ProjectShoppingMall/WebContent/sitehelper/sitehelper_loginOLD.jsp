<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ADMIN LOGIN PAGE</title>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#loginBtn").bind("click", function() {
			if ($("#adminId").val() == '') {
				alert("아이디를 입력하세요");
				$("#adminId").focus();
				return false;
			}
			if ($("#adminPwd").val() == '') {
				alert("패스워드를 입력하세요");
				$("#adminPwd").focus();
				return false;
			}
			$.post("loginchk.do", $("form").serialize(), function(data){
				alert(data);
				if (data == 'ok') {
					location.href = '/index.jsp';
				} else if (data == 'id' || data == 'pw') {
					alert('아이디 비번을 확인하세요.');
					return false;
				} else if (data == 'notShop') {
					alert('등록되지 않은 가맹점입니다.');
					return false;
				} else {
					alert(data + '에러가 발생하였습니다.');
					return false;
				}
			});
		});
	});
</script>
<style type="text/css">
td{
	border:1px solid red;
	text-align:center;
	vertical-align:middle;
}
div{
	border:1px solid blue;
	align:right;
}
</style>

</head>
<body>
	<h2 align="center">관리자 로그인</h2>

	<form method="post">
		<table style="width:300px" align="center" >
			<tr>
				<td style="width:35%">
					<label>ID :</label></td>
				<td style="width:35%">
					<input type="text" name="adminId" id="adminId" />
				</td>
				<td rowspan="2" style="width:30%">
					<button id="loginBtn">로그인</button>
				</td>
			</tr>
			<tr>
				<td>
					<label>PW :</label></td>
				<td>
					<input type="password" name="adminPwd" id="adminPwd" />
				</td>
			</tr>
		</table>
	<!-- class="admchk.do" -->
	</form>
</body>
</html>

