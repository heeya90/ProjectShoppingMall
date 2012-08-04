$(document).ready(function(){
	
	
	
});

/*관리자 추천상품 가져오기*/
var getrecomgoods = function(){
	$.post("UserListEmail.do",{"email":$(".input_box_sel").val(),}, function(result){
		if(result==0){
			$("#mainNotice").append(result);
		}else{
			alert("내용이 없습니다");
			getuserlist();
		}
	});
};

/*인기 상품 가져오기*/
var getbestgoods = function(){
	
};

var getallgoods = function(){
	
};
