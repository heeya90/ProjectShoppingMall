$(document).ready(function(){
	$("#button").css("cursor","pointer");
	$("#name").css("ime-mode","disabled");
	$("#name").focus();
	
	$("#id").bind("blur",function(){
		if($.trim($("#id").val()) != ""){
			$.post("SignUpCheck.do",{"id":$.trim($("#id").val())},function(result){			
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

		if($("#chk").is(':checked')){
		}else{
			alert("����� �����ϼ���");
			return false;
		}
		$("label b").each(function(){
			var $this = $(this);
			if($this.text() == "*"){
				var $field = $this.parent().text();
				var $value = $this.parent().parent().parent().find("input[type=text],input[type=password]").val();
				if($.trim($value) == ""){
					alert($field+"��(��) �Է��ϼ���");
					return false;
				}
			}			
		});
		
		if ($("#pw").val() != $("#rpw").val())
		{
			alert("�н����� Ȯ�� Ȯ�ζ��� ��ġ�����׽��ϴ�");
			$("#pw").val("");
			$("#rpw").val("");
			$("#pw").focus();
			return false;
		}
		
		if ($.trim($("#email").val()).search(/(\S+)@(\S+).(\S+)/))
		{
			alert("�̸��� ������ ���� �ʽ��ϴ�.");
			$("#email").focus();
			return false;
		}
		document.frm.submit();
	});
});