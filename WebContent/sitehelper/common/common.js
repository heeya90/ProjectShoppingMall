jQuery(function(){
	$("#logout").bind("click", function(){
		$.post("logout.do", function(){
			//�ٸ��������� ������(���� ��)
			alert("�α׾ƿ��Ǿ����ϴ�");
		});
	});
});