$(document).ready(function(){
	$(".pop01_input_name").focus();
	$("#idfindCase1").hide();
	$("#idfindCase2").hide();
	
	/*�˻���ư Ŭ����*/
	$(".pop01_btn_ok").bind("click",function(){
		if($("#id").val() == ""){
			if($("#name").val() == ""){
				alert("�̸��� �Է����ּ���");
			}else if($("#email").val() == ""){
				alert("�̸����� �Է����ּ���");
			}else{
				$("#idfindCase2").hide();
				getuserid();
			}
		}else{
			if($("#name").val() == ""){
				alert("�̸��� �Է����ּ���");
			}else if($("#email").val() == ""){
				alert("�̸����� �Է����ּ���");
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

/*���� ���̵�  �ҷ�����*/
function getuserid(){
	$("#find_main").wrap("<form></form>");
	$.post("UserFind.do", $("form").serialize() ,function(result){	
		$("#mainNotice1").text(result);
		$("#idfindCase1").show();
	});
};

/*���� �н�����  �ҷ�����*/
function getuserpw(){
	$("#find_main").wrap("<form></form>");
	$.post("UserFind.do", $("form").serialize() ,function(result){	
		$("#mainNotice2").text(result);
		$("#idfindCase2").show();
	});
};

/*����Ʈ �ʱ�ȭ ��Ű��*/
function selectReset1(){
	$("#mainNotice1").remove();
};
function selectReset2(){
	$("#mainNotice2").remove();
};
