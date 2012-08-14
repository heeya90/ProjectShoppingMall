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
					alert($field+"을(를) 입력하세요");
					return false;
				}
			}			
		});
		
		if ($("#pw").val() != $("#rpw").val())
		{
			alert("패스워드 확인 확인란이 일치하지앖습니다");
			$("#pw").val("");
			$("#rpw").val("");
			$("#pw").focus();
			return false;
		}
		
		if ($.trim($("#email").val()).search(/(\S+)@(\S+).(\S+)/))
		{
			alert("이메일 형식이 맞지 않습니다.");
			$("#email").focus();
			return false;
		}
		document.frm.submit();
	});
});
