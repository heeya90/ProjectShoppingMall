$(document).ready(function(){
	$("#login_main").wrap('<form name="frm" id="frm" method="post"></form>');
	$("#loginBtn").css("cursor","pointer");
	$("#id").css("ime-mode","disabled");
	$("#id").focus();
	
	$("#loginBtn").bind("click", function(){		
		if ($("#id").val() == '')
		{
			alert("아이디를 입력하세요");
			$("#id").focus();
			return false;
		}	
		if ($("#pw").val() == '')
		{
			alert("패스워드를 입력하세요");
			$("#pw").focus();
			return false;
		}
		
		$.post("loginchk.do", $("form").serialize(),function(data){				
			if (data == 'ok'){
				location.href = 'order_list.tiles';
			}else if (data == 'id'){
				alert('아이디를 확인하세요.');
				return false; 
			}else if (data == 'pw'){
				alert('비번을 확인하세요');
				return false;
			}else{				
				alert(data + '에러가 발생하였습니다.');
				return false; 
			}
		});
	});
	// ID, PW 텍스트박스에 엔터키가 눌렸을때
	$("#pw,#id").keydown(function(e) {
		if (e.keyCode == 13) {
			$("#loginBtn").click();
		}
	});
});
