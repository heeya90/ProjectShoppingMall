$(document).ready(function(){
	
	$("#loginBtn").bind("click",function(){		
		if ($("#adminId").val() == '')
		{
			alert("���̵� �Է��ϼ���");
			$("#adminId").focus();
			return false;
		}	
		if ($("#adminPwd").val() == '')
		{
			alert("�н����带 �Է��ϼ���");
			$("#adminPwd").focus();
			return false;
		}
		alert("dslfkj");
		$.post("admchk.do",$("form").serialize(),function(data){				
			if (data == 'ok'){
				location.href = 'index.asp';
			}else if (data == 'error'){
				alert('���̵� ����� Ȯ���ϼ���.');
				return false; 
			}else if (data == 'notShop'){
				alert('��ϵ��� ���� �������Դϴ�.');
				return false;
			}else{				
				alert(data + '������ �߻��Ͽ����ϴ�.');
				return false; 
			}
		});
	});
});