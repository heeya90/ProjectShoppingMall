$(document).ready(function(){
	
	$.post("goodslist.do", $("#productListForm").serialize() , function(data){
		alert(data);
		$("tbody").append(data);
		
	});
});

jQuery(function(){

});