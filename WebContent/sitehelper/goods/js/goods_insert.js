$("document").ready(function(){
	//상품코드 받아와서 넣기
	$.post("goodscodegen.do", function(result){
		$("#p_code").val(result);
	});
});

jQuery(function(){
	$("#submitbutton1, #submitbutton2").click(function(){
		//입력 값 체크 (정규식이용해 비정상값과 빈값 체크)
		//라이브러리를 사용해서 ajax가 파일전송을 할 수 있도록 구현하기(iframe) //jquery.form.js
		var options = { 
				url: 'goodsinsert.do',
		        type: 'post',
		        /*beforeSubmit:function(){
		        	alert($('#frm').serialize());
		        },*/
		        success: function(data){
		        	if( 'false' == data){
		        		alert("상품입력이 실패했습니다");
		        	}else{
		        		alert("상품입력이 성공했습니다");
		        		$('form').find(":input").val("");	//입력 성공시 입력필드 초기화
		        	}
		        },
		    }; 
		
		    $('#frm').ajaxSubmit(options);	//이부분에서 submit이 일어남
		
		//이전 방법(참고용으로 남겨둔것)
		/*$("form#frm").attr("action","goodsinsert.do");
		$("form#frm").submit();//*/
	});
	
	$("#listbutton1, #listbutton2").click(function(){
		//상품 리스트로 가기
		document.location.href="goods_list.tiles";
	});
	
	$('#deletebutton1, #deletebutton2').click(function(){
		document.location.href="goods_list.tiles";
		//상품 삭제하기 //////////////////////////////////////////////////////////////// 구현예정
	});
	
	$('#resetbutton1, #resetbutton2').click(function(){
		$('form').find(":input").val("");
	});
	
	//파일 지우기 버튼
	$('#delimg1, #delimg2, #delimg3, #delimg4, #delimg5').bind("click", function(){
		$("input:file").val("");	//input 타입이 file의 값을 ""로 만들어라
	});
});