$(document).ready(function(){
	$("#button").css("cursor","pointer");
	$("#id").css("ime-mode","disabled");
	$("#id").focus();

	//아이디 중복값 확인하기
	$("#id").bind("blur",function(){
		if($.trim($("#id").val()) != ""){
			$.post("UserCheck.do",{"id":$.trim($("#id").val())},function(result){			
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
		var chk = true;
		$(".join02_left01").each(function(){
			var $this = $(this);			
			var $field = $this.text();
			var $value = $this.next().find("input[type=text],input[type=password],select").val();
			if($.trim($value) == ""){
				alert($field+"을(를) 입력하세요");
				chk = false;
				return false;
			}
						
		});		
		if (chk == true){
			//패스워드 입력란과 확인란이 동일 한지 확인한다
			if ($("#pw").val() != $("#rpw").val())
			{
				alert("패스워드 확인 확인란이 일치하지앖습니다");
				$("#pw").val("");
				$("#rpw").val("");
				$("#pw").focus();
				return false;
			}
			
			//이메일의 이력 형식이 맞는지 확인한다.
			if ($.trim($("#email").val()).search(/(\S+)@(\S+).(\S+)/))
			{
				alert("이메일 형식이 맞지 않습니다.");
				$("#email").focus();
				return false;
			}
			document.frm.submit();
		}
		
	});
});
