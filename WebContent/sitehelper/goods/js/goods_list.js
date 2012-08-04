$(document).ready(function(){
	
	$.post("goodslist.do", $("#productListForm").serialize() , function(data){
		$("tbody").append(data);
	});
});

jQuery(function(){

});
