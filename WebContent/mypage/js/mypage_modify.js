$(document).ready(function(){
	$("#name").css("cursor","pointer");
	$("#name").css("ime-mode","disabled");
	$("#name").focus();
	
	$("#button").bind("click",function(){

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
