$(document).ready(function(){
	$("#name").focus();
});

/*��������Ʈ �ҷ��ͼ� ���̺� ���� �ֱ�*/
function getuserlist(){
	$("#find_main").wrap("<form></form>");
	$.post("FindPw.do", $("form").serialize() ,function(result){
		$("#mainNotice").append(result);
	});
};

/*�˻���ư Ŭ����*/

jQuery(function(){
	
	$("#pwBtn").bind("click",function(){
		selectReset();
		getuserlist();
	});
});

/*����Ʈ �ʱ�ȭ ��Ű��*/
function selectReset(){
	$("#mainNotice tr:not(:first)").remove();
};
