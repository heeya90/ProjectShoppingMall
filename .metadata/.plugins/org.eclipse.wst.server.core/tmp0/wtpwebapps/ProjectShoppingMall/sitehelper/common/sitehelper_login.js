$(document).ready(function(){
	
	$("#loginBtn").bind("click",function(){		
		if ($("#adminId").val() == '')
		{
			alert("아이디를 입력하세요");
			$("#adminId").focus();
			return false;
		}	
		if ($("#adminPwd").val() == '')
		{
			alert("패스워드를 입력하세요");
			$("#adminPwd").focus();
			return false;
		}
		alert("dslfkj");
		$.post("admchk.do",$("form").serialize(),function(data){				
			if (data == 'ok'){
				location.href = 'index.asp';
			}else if (data == 'error'){
				alert('아이디 비번을 확인하세요.');
				return false; 
			}else if (data == 'notShop'){
				alert('등록되지 않은 가맹점입니다.');
				return false;
			}else{				
				alert(data + '에러가 발생하였습니다.');
				return false; 
			}
		});
	});
});