$(document).ready(function(){
	$("#button").css("cursor","pointer");
	$("#id").css("ime-mode","disabled");
	$("#id").focus();

	//���̵� �ߺ��� Ȯ���ϱ�
	$("#id").bind("blur",function(){
		if($.trim($("#id").val()) != ""){
			$.post("UserCheck.do",{"id":$.trim($("#id").val())},function(result){			
				if (result > 0){
					alert("�̹� �����ϴ� ���̵��Դϴ�");
					$("#id").val("");
					$("#id").focus();
					return false;
				}else{
					alert("ȸ������ ������ ���̵��Դϴ�");
				}
			});
		}
	});
	
	
	$("#button").bind("click",function(){
		var chk = true;
		$(".join02_left01").each(function(){
			var $this = $(this);			
			var $field = $this.text();
			var $value = $this.next().find("input[type=text],input[type=password],select").val();
			if($.trim($value) == ""){
				alert($field+"��(��) �Է��ϼ���");
				chk = false;
				return false;
			}
						
		});		
		if (chk == true){
			//�н����� �Է¶��� Ȯ�ζ��� ���� ���� Ȯ���Ѵ�
			if ($("#pw").val() != $("#rpw").val())
			{
				alert("�н����� Ȯ�� Ȯ�ζ��� ��ġ�����׽��ϴ�");
				$("#pw").val("");
				$("#rpw").val("");
				$("#pw").focus();
				return false;
			}
			
			//�̸����� �̷� ������ �´��� Ȯ���Ѵ�.
			if ($.trim($("#email").val()).search(/(\S+)@(\S+).(\S+)/))
			{
				alert("�̸��� ������ ���� �ʽ��ϴ�.");
				$("#email").focus();
				return false;
			}
			document.frm.submit();
		}
		
	});
});
