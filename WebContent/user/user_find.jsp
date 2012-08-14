<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<link href="./common/mem_pop.css" rel="stylesheet" type="text/css"/>
<title>PShoppingMall</title>
</head>
<script type="text/javascript" src="./common/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript" src="user/js/user_find.js"></script>
<body>
<!--ui object -->
<div id="wrap">
<!-- 사이즈 400x290 -->
    <div class="pop01">
	<form>
        <div class="pop01_tt"><img src="./img/pop_idpw.gif" alt="아이디/비밀번호찾기" /></div>
        <div class="pop01_con" id="find_main">
            <div class="pop01_tcon">
                <div class="pop01_tscon">
                    <span class="pop01_name">사용자 아이디<input type="text" name="user_id" title="아이디" id="id" class="pop01_input_name"></span>
                    <span class="pop01_name">사용자 이름<input type="text" name="user_name" title="이름" id="name" class="pop01_input_name"></span>
                    <span class="pop01_phone">사용자 이메일<input type="text" name="user_email" title="이메일주소" id="email" class="pop01_input_mail"></span>
					<span class="pop01_mail" id="idfindCase1">아이디는 : <span id="mainNotice1" ></span> 입니다</span>
					<span class="pop01_mail" id="idfindCase2">패스워드는 : <span id="mainNotice2" ></span> 입니다</span>
                </div>
            </div>
            <div class="pop01_scon">
                <div class="pop01_sscon">
                    <span class="pop01_txt"><img src="./img/dot_arrow.gif" alt="" />아이디를 찾으실때는 회원가입시 작성한 이름과 이메일주소를 입력해주시기 바랍니다.<span class="pop01_indent"></span></span>
                    <span class="pop01_txt"><img src="./img/dot_arrow.gif" alt="" />패스워드를 찾으실때는 회원가입시 작성한 아이디, 이름, 이메일주소를 입력해주시기  바랍니다.<span class="pop01_indent"></span></span>
                </div>
            </div>
            <div class="pop01_btn">
                <span class="pop01_btn_ok"><a href="#"><img src="./img/pop_btn_ok.gif" alt="확인" style="border:0;" /></a></span>
                <span class="pop01_btn_can"><a href="#"><img src="./img/pop_btn_can.gif" alt="취소" style="border:0;" /></a></span>
            </div>
        </div>
	</form>
    </div>
</div>
<!--//ui object -->
</body>
</html>