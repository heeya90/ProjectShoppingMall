$(document).ready(function(){
	$("#button").css("cursor","pointer");
	$("#name").css("ime-mode","disabled");
	$("#name").focus();
	
	$("#id").bind("blur",function(){
		if($.trim($("#id").val()) != ""){
			$.post("SignUpCheck.do",{"id":$.trim($("#id").val())},function(result){			
				if (result > 0){
					alert("이미 존재하는 아이디입니다");
					$("#id").val("");
					$("#id").focus();
					return false;
				}else{
					alert("회원가입 가능한 아이디입니다");
				}
			});
		}
	});
	

	
	$("#button").bind("click",function(){

		if($("#chk").is(':checked')){
		}else{
			alert("약관에 동의하세요");
			return false;
		}
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