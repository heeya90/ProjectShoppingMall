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
				alert("���̵� �Է��ϼ���");
				$("#adminId").focus();
				return false;
			}
			if ($("#adminPwd").val() == '') {
				alert("�н����带 �Է��ϼ���");
				$("#adminPwd").focus();
				return false;
			}
			$.post("loginchk.do", $("form").serialize(), function(data){
				alert(data);
				if (data == 'ok') {
					location.href = '/index.jsp';
				} else if (data == 'id' || data == 'pw') {
					alert('���̵� ����� Ȯ���ϼ���.');
					return false;
				} else if (data == 'notShop') {
					alert('��ϵ��� ���� �������Դϴ�.');
					return false;
				} else {
					alert(data + '������ �߻��Ͽ����ϴ�.');
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
	<h2 align="center">������ �α���</h2>

	<form method="post">
		<table style="width:300px" align="center" >
			<tr>
				<td style="width:35%">
					<label>ID :</label></td>
				<td style="width:35%">
					<input type="text" name="adminId" id="adminId" />
				</td>
				<td rowspan="2" style="width:30%">
					<button id="loginBtn">�α���</button>
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

