$(document).ready(function(){
	
	$.post("goodslist.do", $("#productListForm").serialize() , function(data){
		console.log("data1", data);
		console.log("data2"+ data);
		//console.log("data3"+ $(data).text());
		//console.log("data4"+ data.text());
		//console.log("data5"+ data.html());
		//console.log("data6"+ $(data).html());
		//alert(data);
		
		$("tbody").append(data);
		
		/*$(data).find("tr").each(function(){
			alert(this);
			$("tbody").append($(this));
		});*/
		//$("tbody").append($(data).html());
		
	/*	$(data).find("goods").each(function(){
			
			
			
			$img=$(this).find("img");
			
			if($img){
				$imglist="<td>"+$(this).find("image").html()+"</td>"
				+"<td>"+$(this).find("thumb1").html()+"</td>"
				+"<td>"+$(this).find("thumb2").html()+"</td>";
				alert($imglist);
			}
			
			//alert($imglist);
			$list ="<tr>"
				+"<td>"+$(this).find("category1").html()+"</td>"
				+"<td>"+$(this).find("category2").html()+"</td>"
				+"<td>"+$(this).find("code").html()+"</td>"
				+"<td>"+$(this).find("name").html()+"</td>"
				+"<td>"+$(this).find("price").html()+"<br />"
				+$(this).find("prime").html()+"</td>"
				+"<td>"+$(this).find("readcnt").html()+"</td>"
				+"<td>"+$(this).find("inputdate").html()+"</td>"
				//"<td>"+$(this).find("no").html()+"</td>"+
				+"</tr>";
			alert($list);
			//
			
			
			 
			var $no = $(this).find("no").text();
			var $name = $(this).find("name").text();
			var $code = $(this).find("code").text();
			var $category1 = $(this).find("category1").text();
			var $category2 = $(this).find("category2").text();
			var $price = $(this).find("price").text();
			var $prime = $(this).find("prime").text();
			var $readcnt = $(this).find("readcnt").text();
			var $inputdate = $(this).find("inputdate").text();
			
			//$("tr:last").html("<td>"+$no+"</td>");
			
				
				var $key = $(this).attr("key");
				var $value = $(this).find("value").text();
				if ($key == 'no'){
					$("#categoryA").find("option:last").val($value);
				}else if ($key == 'name'){
					$("#categoryA").find("option:last").text($value);
				}
				XML+="<goods>";
				XML+="<no>"+gb.getNo()+"</no>";
				XML+="<name>"+gb.getName()+"</name>";
				XML+="<code>"+gb.getCode()+"</code>";
				XML+="<category1>"+gb.getCategory1()+"<category1>";
				XML+="<category2>"+gb.getCategory2()+"<category2>";
				XML+="<price>"+gb.getPrice()+"</price>";
				XML+="<prime>"+gb.getPrime()+"</prime>";
				XML+="<readcnt>"+gb.getReadcnt()+"</readcnt>";
				XML+="<inputdate>"+gb.getInputdate()+"</inputdate>";
				XML+="</goods>";
		});*/
		
	});
});

jQuery(function(){

});