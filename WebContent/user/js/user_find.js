$(document).ready(function(){
	$("#find_main").wrap('<form name="frm" id="frm" method="post"></form>');
	$("#idBtn").css("cursor","pointer");
	$("#name").css("ime-mode","disabled");
	$("#name").focus();
	
	$("#idBtn").bind("click",function(){		
		if ($("#name").val() == '')
		{
			alert("�̸��� �Է��ϼ���");
			$("#name").focus();
			return false;
		}	
		if ($("#email").val() == '')
		{
			alert("�̸����� �Է��ϼ���");
			$("#email").focus();
			return false;
		}
		
		$.post("FindId.do", $("input").serialize() ,function(data){
			alert(data);
			if (data == 'ok'){
				location.href = 'no_user_findid.tiles';
			}else if (data == 'name'){
				alert('�̸��� Ȯ���ϼ���.');
				return false; 
			}else if (data == 'email'){
				alert('�̸����� Ȯ���ϼ���');
				return false;
			}else{				
				alert('������ �߻��Ͽ����ϴ�.');
				return false; 
			}
		});
	});
	$("#name,#email").keydown(function(e) {
		if (e.keyCode == 13) {
			$("#idBtn").click();
		}
	});
});
