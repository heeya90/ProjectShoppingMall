$(document).ready(function(){
	getuserlist();
});

/*��������Ʈ �ҷ��ͼ� ���̺� ���� �ֱ�*/
var getuserlist = function(){
	$.post("UserList.do", function(result){
		$("#mainNotice").append(result);
	});
};