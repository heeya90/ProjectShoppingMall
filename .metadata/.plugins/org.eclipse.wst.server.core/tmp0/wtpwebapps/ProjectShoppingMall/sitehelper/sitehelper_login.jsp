<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ADMIN LOGIN PAGE</title>
<script type="text/javascript" src="../common/jquery-1.7.2.js"></script>
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
				alert("ajax get return");
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
		$("#loginBtn2").bind("click", function() {
            if ($("#adminId2").val() == '') {
                alert("���̵� �Է��ϼ���");
                $("#adminId2").focus();
                return false;
            }
            if ($("#adminPwd2").val() == '') {
                alert("�н����带 �Է��ϼ���");
                $("#adminPwd2").focus();
                return false;
            }
            $.post("loginchk2.do", $("form").serialize(), function(data){
                alert(data+"2");
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
</head>
<body>
	<h2>������ �α���</h2>

	<form method="post">
	ID :<input type="text" name="adminId" id="adminId" value="admin" /><br />
	PW :<input type="password" name="adminPwd" id="adminPwd" value="test" /><br />
	<button id="loginBtn">�α���</button>
	<hr />
    ID :<input type="text" name="adminId2" id="adminId2" value="admin" /><br />
    PW :<input type="password" name="adminPwd2" id="adminPwd2" value="test" /><br />
    <button id="loginBtn2">���ؼ�Ǯ�α���</button>
	</form>
</body>
</html>