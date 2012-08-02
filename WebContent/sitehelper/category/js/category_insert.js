$(document).ready(function(){
	
	getcategory1();
	$("#categoryName1").val("");
});

/*카테고리  셀렉박스 초기화 시키기*/
var categoryAReset = function(){
	$("#categoryA option").remove();
	$("#categoryA").parent().parent().find("input[type=text][id=categoryName]").val("");
};
var categoryBReset = function(){
	$("#categoryB option").remove();
	$("#categoryB").parent().parent().find("input[type=text][id=categoryName]").val("");
};

/*카테고리 대분류 불러와서 셀렉박스에 집어넣기*/
var getcategory1 = function(){
	categoryAReset();
	$.post("Category1List.do", function(result){
		//$("#categoryA").html("<option value='1(번째idx)'>등산복</option>");
		//$("#categoryA").append("<option>휴 이렇게 들가네</option>");
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

/*카테고리 중분류 불러와서 셀렉박스에 집어넣기*/
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


/*카테고리1 등록  버튼 시작*/
jQuery(function(){
	$("#newbutton1").bind("click",function(){
		$.post("Category1Insert.do",{"categoryName":$("#categoryName1").val()},function(data){
			if(data==0){
				getcategory1();
			}else{
				alert("카테고리 대분류 입력에 실패 하였습니다.");
			}			
		});
	});
});

/*카테고리2 등록  버튼 시작*/
jQuery(function(){
	$("#newbutton2").bind("click",function(){
		$.post("Category2Insert.do",{"categoryName":$("#categoryName2").val()},function(data){
			if(data==0){
				getcategory2();
			}else{
				alert("카테고리 대분류 입력에 실패 하였습니다.");
			}			
		});
	});
});

/*카테고리1 셀렉박스 선택하기*/
jQuery(function(){
	$("#categoryA").bind("click",function(){
		$("#categoryName1").val($("#categoryA option:selected").text());
			getcategory2();
	});
});

/*카테고리1 수정 버튼 시작*/
jQuery(function(){
	$("#updatebutton1").bind("click",function(){		
		if($("#categoryA option").is(":selected")){

			$.post("Category1Insert.do",{"categoryNo":$("#categoryA option:selected").val(),"categoryName":$("#categoryName1").val()},function(data){
				if(data==0){
					getcategory1();
				}else{
					alert("카테고리 대분류 입력에 실패 하였습니다.");
				}			
			});	
		}else{
			alert("수정하실 카테고리를 먼저 선택하세요");
		}
	});
});
		
