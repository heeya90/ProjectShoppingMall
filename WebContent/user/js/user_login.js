$(document).ready(function() {
	$("#login_main").wrap('<form name="frm" id="frm" method="post"></form>');
	$("#btnLogin").css("cursor", "pointer");
	$("#id").css("ime-mode", "disabled");
	$("#id").focus();

	$("#btnLogin").bind("click", function(e) {
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

		$.post("UserLogin.do", $("form").serialize(), function(data) {
			if (data == 'ok') {
				location.href = 'UserMain.do';
			} else {
				alert('���̵�� ����� Ȯ���ϼ���.');
				return false;
			}
		});
		e.preventDefault();
	});
	$("#pw,#id").keydown(function(e) {
		if (e.keyCode == 13) {
			$("#btnLogin").click();
		}
	});
	
	$(".lg_btn_sid a").bind("click",function(e){
		//location.href = 'no_user_find.tiles';
		window.open("UserFindBefore.do","find","dialogWidth=400, dialogHeight=290, center:yes, status:no, scroll=no, resizale=no");
		e.preventDefault();
	});
});