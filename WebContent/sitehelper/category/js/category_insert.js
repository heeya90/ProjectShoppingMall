$(document).ready(function(){
	$("#category1").val("GlennQuagmire");
	//$("categorySelectBox").val("arrcat");
	
});
/*��� ���� ���� ��ư*/
//#updatebutton,#deletebutton

jQuery(function(){
	$("#newbutton").click(function(){
		alert("��ưŬ���� �ڹٽ�ũ��Ʈ ���׾���");
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