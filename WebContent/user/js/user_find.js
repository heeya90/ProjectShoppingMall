$(document).ready(function(){
	$(".pop01_input_name").focus();
	$("#idfindCase1").hide();
	$("#idfindCase2").hide();
	
	/*검색버튼 클릭시*/
	$(".pop01_btn_ok").bind("click",function(){
		if($("#id").val() == ""){
			if($("#name").val() == ""){
				alert("이름을 입력해주세요");
			}else if($("#email").val() == ""){
				alert("이메일을 입력해주세요");
			}else{
				$("#idfindCase2").hide();
				getuserid();
			}
		}else{
			if($("#name").val() == ""){
				alert("이름을 입력해주세요");
			}else if($("#email").val() == ""){
				alert("이메일을 입력해주세요");
			}else{
				$("#idfindCase1").hide();
				getuserpw();
			}
		}

	});
	
	$(".pop01_btn_can").bind("click",function(){
		self.close();
	});
	
});

/*유저 아이디  불러오기*/
function getuserid(){
	$("#find_main").wrap("<form></form>");
	$.post("UserFind.do", $("form").serialize() ,function(result){	
		$("#mainNotice1").text(result);
		$("#idfindCase1").show();
	});
};

/*유저 패스워드  불러오기*/
function getuserpw(){
	$("#find_main").wrap("<form></form>");
	$.post("UserFind.do", $("form").serialize() ,function(result){	
		$("#mainNotice2").text(result);
		$("#idfindCase2").show();
	});
};

/*리스트 초기화 시키기*/
function selectReset1(){
	$("#mainNotice1").remove();
};
function selectReset2(){
	$("#mainNotice2").remove();
};
