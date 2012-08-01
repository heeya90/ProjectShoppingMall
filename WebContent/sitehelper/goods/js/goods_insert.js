$("document").ready(function(){
	//상품코드 생성
	$.post("goodscodegen.do", function(result){
		var date = new Date();
		var code = date.getMonth().toString()
				  +date.getDate().toString()
				  +date.getHours()
				  +result;
		$("#p_code").val(code);
	});
	//카테고리a 불러오기
	$.post("category1List.do", function(result){
	    //카테고리 불러오기
	});
});

jQuery(function(){
	$('#submitbutton1,#submitbutton2').click(function(){
		$.post("goodsinsert.do", $("#frm").serialize(), function(data){
			//입력된 값들 데이터베이스에 입력
			if(data == 'true'){
				alert("상품입력성공^^");
			}else{
				alert("상품입력실패ㅠㅠ");
			}
		});
	});
	
	$('#categoryA').html("option").click(function(){
		 $.post("category2List.do", function(result){
			    //카테고리 불러오기
		 });
	});
});


