$(document).ready(function() {
	$("#login_main").wrap('<form name="frm" id="frm" method="post"></form>');
	$("#btnlogin").css("cursor", "pointer");
	$("#id").css("ime-mode", "disabled");
	$("#id").focus();

	$("#btnlogin").bind("click", function() {
		if ($("#id").val() == '') {
			alert("���̵� �Է��ϼ���");
			$("#id").focus();
			return false;
		}
		if ($("#pw").val() == '') {
			alert("�н����带 �Է��ϼ���");
			$("#pw").focus();
			return false;
		}

		$.post("ChkLogin.do", $("form").serialize(), function(data) {
			if (data == 'ok') {
				location.href = 'no_user_reg.tiles';
			} else if (data == 'id') {
				alert('���̵� Ȯ���ϼ���.');
				return false;
			} else if (data == 'pw') {
				alert('����� Ȯ���ϼ���');
				return false;
			} else {
				alert(data + '������ �߻��Ͽ����ϴ�.');
				return false;
			}
		});
	});
	$("#pw,#id").keydown(function(e) {
		if (e.keyCode == 13) {
			$("#loginBtn").click();
		}
	});
});