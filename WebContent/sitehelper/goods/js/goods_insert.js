jQuery(function(){
	$("#submitbutton1, #submitbutton2").bind("click", function(){
		//�Է� �� üũ (���Խ��̿��� �����󰪰� �� üũ)
		//���ڸ� �Էµǵ��� üũ�ϴ� �κ�(��ǰ�ڵ�, ����, �ǸŰ�, ���)
		/*var onlynumber = /[0-9 -()+]+$/;
		if(onlynumber.test($("#p_code, #prime_price, #price, #inventory").val())){
			alert("���ڸ� �Է��Ұ��� �ٸ����� �Է��ϼ̳׿�?");
		}
		if($("input:text").val() == ''){
			alert("���� Ȯ�� ���ּ���");
			$("input:text").val().match(onlynumber);
			return false;
		}*/
		$("#frm").submit();
	});
	
	$("#codegen").click(function(){
		codegen();	//Ŭ���ϸ� ��ǰ�ڵ� �޾Ƽ� �ؽ�Ʈ���ڿ� �ֱ�
	});
	
	$("#listbutton1, #listbutton2").click(function(){
		//��ǰ ����Ʈ�� ����
		document.location.href="goodslist.do";
	});
	
	$('#deletebutton1, #deletebutton2').click(function(){
		document.location.href="goodsdelete.do";
		//��ǰ �����ϱ� //////////////////////////////////////////////////////////////// ��������
	});
	
	$('#resetbutton1, #resetbutton2').click(function(){
		$('form').find(":input").val("");
		$('#codegen').val("�ڵ����");
	});
	
	//���� ����� ��ư
	$('#delimg1, #delimg2, #delimg3, #delimg4, #delimg5').bind("click", function(){
		$("input:file").val("");	//input Ÿ���� file�� ���� ""�� ������
		//ajax�� ���� �ٷλ��� ����///////////////////////////////////////////////////////// ��������
	});
});

function codegen(){
	$.post("goodscodegen.do", function(result){
		$("#p_code").val(result);
	});
};
//���̺귯���� ����ؼ� ajax�� ���������� �� �� �ֵ��� �����ϱ�(iframe) //jquery.form.js
/*var options = { 
		url: 'goodsinsert.do',
        type: 'post',
        success: function(data){
        	if( 'false' == data){
        		alert("��ǰ�Է��� �����߽��ϴ�");
        	}else{
        		alert("��ǰ�Է��� �����߽��ϴ�");
        		$('form').find(":input").val("");	//�Է� ������ �Է��ʵ� �ʱ�ȭ
        	}
        }
}; 

$('#frm').ajaxSubmit(options);	//�̺κп��� submit�� �Ͼ		
//���� ���(��������� ���ܵа�)
$("form#frm").attr("action","goodsinsert.do");
$("form#frm").submit();//*/
