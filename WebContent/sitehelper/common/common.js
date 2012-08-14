jQuery(function(){
	$("#logout").bind("click", function(){
		$.post("logout.do", function(){
			//다른페이지로 보내기(지금 모름)
			alert("로그아웃되었습니다");
		});
	});
});