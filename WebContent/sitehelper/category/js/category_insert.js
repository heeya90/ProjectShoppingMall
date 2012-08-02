$(document).ready(function(){
	
	getcategory1();
	$("#categoryName1").val("");
});

/*ī�װ�  �����ڽ� �ʱ�ȭ ��Ű��*/
var categoryAReset = function(){
	$("#categoryA option").remove();
	$("#categoryA").parent().parent().find("input[type=text][id=categoryName]").val("");
};
var categoryBReset = function(){
	$("#categoryB option").remove();
	$("#categoryB").parent().parent().find("input[type=text][id=categoryName]").val("");
};

/*ī�װ� ��з� �ҷ��ͼ� �����ڽ��� ����ֱ�*/
var getcategory1 = function(){
	categoryAReset();
	$.post("Category1List.do", function(result){
		//$("#categoryA").html("<option value='1(��°idx)'>��꺹</option>");
		//$("#categoryA").append("<option>�� �̷��� �鰡��</option>");
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
var getcategory2 = function(){
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
		$.post("Category2Insert.do",{"categoryName":$("#categoryName2").val()},function(data){
			if(data==0){
				getcategory2();
			}else{
				alert("ī�װ� ��з� �Է¿� ���� �Ͽ����ϴ�.");
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

/*ī�װ�1 ���� ��ư ����*/
jQuery(function(){
	$("#updatebutton1").bind("click",function(){		
		if($("#categoryA option").is(":selected")){

			$.post("Category1Insert.do",{"categoryNo":$("#categoryA option:selected").val(),"categoryName":$("#categoryName1").val()},function(data){
				if(data==0){
					getcategory1();
				}else{
					alert("ī�װ� ��з� �Է¿� ���� �Ͽ����ϴ�.");
				}			
			});	
		}else{
			alert("�����Ͻ� ī�װ��� ���� �����ϼ���");
		}
	});
});
		
