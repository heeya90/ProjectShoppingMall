jQuery(function(){
	$("#allcategory").bind("click", function(){
		document.location.href("goodslist.do");
	});
	
	$(".p_code").click(function(){
		$(this).attr("href", "goodsupdate.do?code="+$(this).text());
	});
});