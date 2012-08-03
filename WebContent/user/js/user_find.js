$(document).ready(function(){
	$("#find_main").wrap('<form name="frm" id="frm" method="post"></form>');
	$("#idBtn").css("cursor","pointer");
	$("#name").css("ime-mode","disabled");
	$("#name").focus();
	
	$("#idBtn").bind("click",function(){		
		if ($("#name").val() == '')
		{
			alert("이름을 입력하세요");
			$("#name").focus();
			return false;
		}	
		if ($("#email").val() == '')
		{
			alert("이메일을 입력하세요");
			$("#email").focus();
			return false;
		}
		
		$.post("FindId.do", $("input").serialize() ,function(data){
			alert(data);
			if (data == 'ok'){
				location.href = 'no_user_findid.tiles';
			}else if (data == 'name'){
				alert('이름을 확인하세요.');
				return false; 
			}else if (data == 'email'){
				alert('이메일을 확인하세요');
				return false;
			}else{				
				alert('에러가 발생하였습니다.');
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
