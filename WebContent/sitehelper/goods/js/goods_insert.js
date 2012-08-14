jQuery(function(){
	$("#submitbutton1, #submitbutton2").bind("click", function(){
		//입력 값 체크 (정규식이용해 비정상값과 빈값 체크)
		//숫자만 입력되도록 체크하는 부분(상품코드, 원가, 판매가, 재고)
		/*var onlynumber = /[0-9 -()+]+$/;
		if(onlynumber.test($("#p_code, #prime_price, #price, #inventory").val())){
			alert("숫자만 입력할곳에 다른값을 입력하셨네요?");
		}
		if($("input:text").val() == ''){
			alert("값을 확인 해주세요");
			$("input:text").val().match(onlynumber);
			return false;
		}*/
		$("#frm").submit();
	});
	
	$("#codegen").click(function(){
		codegen();	//클릭하면 상품코드 받아서 텍스트상자에 넣기
	});
	
	$("#listbutton1, #listbutton2").click(function(){
		//상품 리스트로 가기
		document.location.href="goodslist.do";
	});
	
	$('#deletebutton1, #deletebutton2').click(function(){
		document.location.href="goodsdelete.do";
		//상품 삭제하기 //////////////////////////////////////////////////////////////// 구현예정
	});
	
	$('#resetbutton1, #resetbutton2').click(function(){
		$('form').find(":input").val("");
		$('#codegen').val("코드생성");
	});
	
	//파일 지우기 버튼
	$('#delimg1, #delimg2, #delimg3, #delimg4, #delimg5').bind("click", function(){
		$("input:file").val("");	//input 타입이 file의 값을 ""로 만들어라
		//ajax로 파일 바로삭제 구현///////////////////////////////////////////////////////// 구현예정
	});
});

function codegen(){
	$.post("goodscodegen.do", function(result){
		$("#p_code").val(result);
	});
};
//라이브러리를 사용해서 ajax가 파일전송을 할 수 있도록 구현하기(iframe) //jquery.form.js
/*var options = { 
		url: 'goodsinsert.do',
        type: 'post',
        success: function(data){
        	if( 'false' == data){
        		alert("상품입력이 실패했습니다");
        	}else{
        		alert("상품입력이 성공했습니다");
        		$('form').find(":input").val("");	//입력 성공시 입력필드 초기화
        	}
        }
}; 

$('#frm').ajaxSubmit(options);	//이부분에서 submit이 일어남		
//이전 방법(참고용으로 남겨둔것)
$("form#frm").attr("action","goodsinsert.do");
$("form#frm").submit();//*/
