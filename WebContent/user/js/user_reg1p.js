$(document).ready(function(){
	$(".join01_btn01").bind("click",function(){
		if($("#chk1").is(':checked')){
			if($("#chk2").is(':checked')){
				
			}else{
				alert("����������޹�ħ�� �����ϼ���");
				return false;
			}
		}else{
			alert("����� �����ϼ���");
			return false;
		}
	});
});