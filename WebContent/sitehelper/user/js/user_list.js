$(document).ready(function(){
	getuserlist();
	$(function() {
		$( "#datepicker1, #datepicker2" ).datepicker({ dateFormat: "yy-mm-dd" });
	});


});

/*유저리스트 불러와서 테이블에 집어 넣기*/
function getuserlist(){
	$.post("UserList.do", function(result){
		$("#mainNotice").append(result);
	});
};

/*이름으로 검색하기*/
function getusername(){
	$.post("UserListName.do",{"name":$(".input_box_sel").val(),}, function(result){
		if(result==0){
			$("#mainNotice").append(result);
		}else{
			alert("내용이 없습니다");
			getuserlist();
		}
	});
};

/*아이디로 검색하기*/
function getuserid(){
	$.post("UserListId.do",{"id":$(".input_box_sel").val(),}, function(result){
		if(result==0){
			$("#mainNotice").append(result);
		}else{
			alert("내용이 없습니다");
			getuserlist();
		}
	});
};

/*이메일로 검색하기*/
function getuseremail(){
	$.post("UserListEmail.do",{"email":$(".input_box_sel").val(),}, function(result){
		if(result==0){
			$("#mainNotice").append(result);
		}else{
			alert("내용이 없습니다");
			getuserlist();
		}
	});
};

/*검색버튼 클릭시*/
jQuery(function(){
	$("#memSearchGo").bind("click",function(){
		select = $(".admin_select_sel option:selected").val(); 
		if('name'==select) {
			selectReset();
			getusername();
			$(".input_box_sel").val("");
		}else if('userid'==select){
			selectReset();
			getuserid();
			$(".input_box_sel").val("");
		}else if('email'==select){
			selectReset();
			getuseremail();
			$(".input_box_sel").val("");
		};
	});
});

/*리스트 초기화 시키기*/
var selectReset = function(){
	$("#mainNotice tr:not(:first)").remove();
};