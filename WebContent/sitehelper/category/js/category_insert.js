$(document).ready(function(){
	$("#category1").val("GlennQuagmire");
	//$("categorySelectBox").val("arrcat");
	
});
/*등록 수정 삭제 버튼*/
//#updatebutton,#deletebutton

jQuery(function(){
	$("#newbutton").click(function(){
		alert("버튼클릭됨 자바스크립트 안죽었다");
		var cat = $("#category1").val;
		$.post("Category1Insert.do", { cat1: cat} ,function(XML){
			alert(xml);
			if (window.DOMParser){
			    parser=new DOMParser();
			    xmlDoc=parser.parseFromString(XML,"text/xml");
			}
			else{ // Internet Explorer
			    xmlDoc=new ActiveXObject("Microsoft.XMLDOM");
			    xmlDoc.async=false;
			    xmlDoc.loadXML(XML); 
			}
			
			arr = xmlDoc.getElementsByTagName("category1").childNodes("name");
			for(var i=0 ; i < arr.length ; i++){
				//$("#categoryA").val(arr.nodeValue);
				alert(arr[i].nodeValue);
			}
			
			
	/*			$("#categoryA").val(
				xmlDoc.getElementsByTagName("category1").childNodes("name").nodeValue);
	*/			
			//location.href = 'sitehelper/category_insert.tiles';
		});
	});
});