$(document).ready(function(){
	getuserlist();
	$(function() {
		$( "#datepicker" ).datepicker();
	});


});

/*��������Ʈ �ҷ��ͼ� ���̺� ���� �ֱ�*/
var getuserlist = function(){
	$.post("UserList.do", function(result){
		$("#mainNotice").append(result);
	});
};

/*�̸����� �˻��ϱ�*/
var getusername = function(){
	$.post("UserListName.do",{"name":$(".input_box_sel").val(),}, function(result){
		if(result==0){
			$("#mainNotice").append(result);
		}else{
			alert("������ �����ϴ�");
			getuserlist();
		}
	});
};

/*���̵�� �˻��ϱ�*/
var getuserid = function(){
	$.post("UserListId.do",{"id":$(".input_box_sel").val(),}, function(result){
		if(result==0){
			$("#mainNotice").append(result);
		}else{
			alert("������ �����ϴ�");
			getuserlist();
		}
	});
};

/*�̸��Ϸ� �˻��ϱ�*/
var getuseremail = function(){
	$.post("UserListEmail.do",{"email":$(".input_box_sel").val(),}, function(result){
		if(result==0){
			$("#mainNotice").append(result);
		}else{
			alert("������ �����ϴ�");
			getuserlist();
		}
	});
};

/*�˻���ư Ŭ����*/
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

/*����Ʈ �ʱ�ȭ ��Ű��*/
var selectReset = function(){
	$("#mainNotice tr:not(:first)").remove();
};