$(document).ready(function(){
	
	
	
});

/*������ ��õ��ǰ ��������*/
var getrecomgoods = function(){
	$.post("UserListEmail.do",{"email":$(".input_box_sel").val(),}, function(result){
		if(result==0){
			$("#mainNotice").append(result);
		}else{
			alert("������ �����ϴ�");
			getuserlist();
		}
	});
};

/*�α� ��ǰ ��������*/
var getbestgoods = function(){
	
};

var getallgoods = function(){
	
};
