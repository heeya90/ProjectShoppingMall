$("document").ready(function(){
	//��ǰ�ڵ� ����
	$.post("goodscodegen.do", function(result){
		var date = new Date();
		var code = date.getMonth().toString()
				  +date.getDate().toString()
				  +date.getHours()
				  +result;
		$("#p_code").val(code);
	});
	//ī�װ�a �ҷ�����
	$.post("category1List.do", function(result){
	    //ī�װ� �ҷ�����
	});
});

jQuery(function(){
	$('#submitbutton1,#submitbutton2').click(function(){
		$.post("goodsinsert.do", $("#frm").serialize(), function(data){
			//�Էµ� ���� �����ͺ��̽��� �Է�
			if(data == 'true'){
				alert("��ǰ�Է¼���^^");
			}else{
				alert("��ǰ�Է½��ФФ�");
			}
		});
	});
	
	$('#categoryA').html("option").click(function(){
		 $.post("category2List.do", function(result){
			    //ī�װ� �ҷ�����
		 });
	});
});


