$("document").ready(function(){
	//��ǰ�ڵ� �޾ƿͼ� �ֱ�
	$.post("goodscodegen.do", function(result){
		$("#p_code").val(result);
	});
});

jQuery(function(){
	$("#submitbutton1, #submitbutton2").click(function(){
		//�Է� �� üũ (���Խ��̿��� �����󰪰� �� üũ)
		//���̺귯���� ����ؼ� ajax�� ���������� �� �� �ֵ��� �����ϱ�(iframe) //jquery.form.js
		var options = { 
				url: 'goodsinsert.do',
		        type: 'post',
		        /*beforeSubmit:function(){
		        	alert($('#frm').serialize());
		        },*/
		        success: function(data){
		        	if( 'false' == data){
		        		alert("��ǰ�Է��� �����߽��ϴ�");
		        	}else{
		        		alert("��ǰ�Է��� �����߽��ϴ�");
		        		$('form').find(":input").val("");	//�Է� ������ �Է��ʵ� �ʱ�ȭ
		        	}
		        },
		    }; 
		
		    $('#frm').ajaxSubmit(options);	//�̺κп��� submit�� �Ͼ
		
		//���� ���(��������� ���ܵа�)
		/*$("form#frm").attr("action","goodsinsert.do");
		$("form#frm").submit();//*/
	});
	
	$("#listbutton1, #listbutton2").click(function(){
		//��ǰ ����Ʈ�� ����
		document.location.href="goods_list.tiles";
	});
	
	$('#deletebutton1, #deletebutton2').click(function(){
		document.location.href="goods_list.tiles";
		//��ǰ �����ϱ� //////////////////////////////////////////////////////////////// ��������
	});
	
	$('#resetbutton1, #resetbutton2').click(function(){
		$('form').find(":input").val("");
	});
	
	//���� ����� ��ư
	$('#delimg1, #delimg2, #delimg3, #delimg4, #delimg5').bind("click", function(){
		$("input:file").val("");	//input Ÿ���� file�� ���� ""�� ������
	});
});