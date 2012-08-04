$("document").ready(function(){
	//상품코드 생성
	$.post("goodscodegen.do", function(result){
		var date = new Date();
		var code = (date.getMonth()+1).toString()
		+date.getDate().toString()
		+date.getHours()
		+result;
		$("#p_code").val(code);
	});
	//카테고리a 불러오기
	getcategory1();
});

jQuery(function(){
	$("#submitbutton1, #submitbutton2").click(function(){
		$("form#frm").attr("action","goodsinsert.do");
		$("form#frm").submit();
		/* 라이브러리를 사용해서 ajax가 파일전송을 할 수 있도록 구현하기(iframe) 
		$.post("goodsinsert.do", $("form#frm").serialize() , function(data){
			//입력된 값들 데이터베이스에 입력
			if(data == 'true'){
				alert("상품입력성공^^");
			}else{
				alert("상품입력실패ㅠㅠ");
			}
		});*/
	});
	$("#categoryA").bind("click", function(){
		$("#categoryName1").val($("#categoryA option:selected").text());
			getcategory2();
	});
	
	$("#listbutton1, #listbutton2").click(function(){
		document.location.href="goods_list.tiles";
	});
	$('#deletebutton1, #deletebutton2').click(function(){
		document.location.href="goods_list.tiles";
	});
	/*$('#resetbutton*').click(function(){
		document.href("");
	});*/
	
	$('#delimg*').bind("click", function(){
		if($(this) == $('#delimg1')){

		}
	});
});
/*함수 선언 부분*/
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
/*셀렉박스 초기화*/
function categoryAReset(){
	$("#categoryA option").remove();
	$("#categoryA").parent().parent().find("input[type=text][id=categoryName]").val("");
};

function categoryBReset(){
	$("#categoryB option").remove();
	$("#categoryB").parent().parent().find("input[type=text][id=categoryName]").val("");
};