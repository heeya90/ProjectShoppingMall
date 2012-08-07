$(document).ready(function(){
	$("#name").focus();
});

/*유저리스트 불러와서 테이블에 집어 넣기*/
function getuserlist(){
	$("#find_main").wrap("<form></form>");
	$.post("FindPw.do", $("form").serialize() ,function(result){
		$("#mainNotice").append(result);
	});
};

/*검색버튼 클릭시*/

jQuery(function(){
	
	$("#pwBtn").bind("click",function(){
		selectReset();
		getuserlist();
	});
});

/*리스트 초기화 시키기*/
function selectReset(){
	$("#mainNotice tr:not(:first)").remove();
};
