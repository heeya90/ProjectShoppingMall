$(document).ready(function(){
	$(".join01_btn01").bind("click",function(){
		if($("#chk1").is(':checked')){
			if($("#chk2").is(':checked')){
				
			}else{
				alert("개인정보취급방침에 동의하세요");
				return false;
			}
		}else{
			alert("약관에 동의하세요");
			return false;
		}
	});
});