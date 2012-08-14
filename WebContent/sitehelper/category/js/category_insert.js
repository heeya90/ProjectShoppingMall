$(document).ready(function(){	//������ �ε��Ҷ� function �����ض�
	
	getcategory1();	
	$("#categoryName1").val("");
	
});

/*ī�װ�  �����ڽ� �ʱ�ȭ ��Ű��*/
function categoryAReset(){
	$("#categoryA option").remove();
	$("#categoryA").parent().parent().find("input[type=text][id=categoryName]").val("");
};
function categoryBReset(){
	$("#categoryB option").remove();
	$("#categoryB").parent().parent().find("input[type=text][id=categoryName]").val("");
};

/*ī�װ� ��з� �ҷ��ͼ� �����ڽ��� ����ֱ�*/
function getcategory1(){
	categoryAReset();
	$.post("Category1List.do", function(result){
		$(result).find("group").each(function(){
			$("#categoryA").append("<option></option>");
			$(this).find("item").each(function(){
				var $key = $(this).attr("key");
				var $value = $(this).find("value").text();
				if ($key == 'no'){
					$("#categoryA").find("option:last").val($value);
				}else if ($key == 'name'){
					$("#categoryA").find("option:last").text($value);
				}
			});
		});
	});
};

/*ī�װ� �ߺз� �ҷ��ͼ� �����ڽ��� ����ֱ�*/
function getcategory2(){
	categoryBReset();
	$.post("Category2List.do",{"category1No":$("#categoryA option:selected").val()}, function(result){
		$(result).find("group").each(function(){
			$("#categoryB").append("<option></option>");
			$(this).find("item").each(function(){
				var $key = $(this).attr("key");
				var $value = $(this).find("value").text();
				if ($key == 'no'){
					$("#categoryB").find("option:last").val($value);
				}else if ($key == 'name'){
					$("#categoryB").find("option:last").text($value);
				}
			});
		});
	});
};
/*ī�װ�1 ���  ��ư ����*/
jQuery(function(){
	$("#newbutton1").bind("click",function(){
		$.post("Category1Insert.do",{"categoryName":$("#categoryName1").val()},function(data){
			if(data==0){
				getcategory1();
			}else{
				alert("ī�װ� ��з� �Է¿� ���� �Ͽ����ϴ�.");
			}			
		});
	});
});

/*ī�װ�2 ���  ��ư ����*/
jQuery(function(){
	$("#newbutton2").bind("click",function(){
		alert($("#categoryName2").val());
		alert($("#categoryA option:selected").val());
		$.post("Category2Insert.do",{"categoryName2":$("#categoryName2").val(),"category1No":$("#categoryA option:selected").val()},function(data){
			if(data==0){
				getcategory2();
			}else{
				alert("ī�װ� �ߺз� �Է¿� ���� �Ͽ����ϴ�.");
			}			
		});
	});
});

/*ī�װ�1 �����ڽ� �����ϱ�*/
jQuery(function(){
	$("#categoryA").bind("click",function(){
		$("#categoryName1").val($("#categoryA option:selected").text());
			getcategory2();
	});
});
/*ī�װ�2 �����ڽ� �����ϱ�*/
jQuery(function(){
	$("#categoryB").bind("click",function(){
		$("#categoryName2").val($("#categoryB option:selected").text());
	});
});

/*ī�װ�1 ���� ��ư ����*/
jQuery(function(){
	$("#updatebutton1").bind("click",function(){		
		if($("#categoryA option").is(":selected")){
			$.post("Category1Insert.do",{"categoryNo":$("#categoryA option:selected").val(),"categoryName":$("#categoryName1").val()},function(data){
				if(data==0){
					getcategory1();
				}else{
					alert("ī�װ� ��з� ������ ���� �Ͽ����ϴ�.");
				}			
			});	
		}else{
			alert("�����Ͻ� ī�װ��� ���� �����ϼ���");
		}
	});
});

/*ī�װ�2 ���� ��ư ����*/
jQuery(function(){
	$("#updatebutton2").bind("click",function(){		
		if($("#categoryB option").is(":selected")){
			$.post("Category2Insert.do",{"categoryNo":$("#categoryB option:selected").val(),"categoryName":$("#categoryName2").val()},function(data){
				if(data==0){
					getcategory2();
				}else{
					alert("ī�װ� �ߺз� ������ ���� �Ͽ����ϴ�.");
				}			
			});	
		}else{
			alert("�����Ͻ� ī�װ��� ���� �����ϼ���");
		}
	});
});
		
