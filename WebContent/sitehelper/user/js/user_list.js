$(document).ready(function(){
	getuserlist();
});

/*유저리스트 불러와서 테이블에 집어 넣기*/
var getuserlist = function(){
	$.post("UserList.do", function(result){
		$("#mainNotice").append(result);
	});
};