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
<!-- ������ 400x290 -->
    <div class="pop01">
	<form>
        <div class="pop01_tt"><img src="./img/pop_idpw.gif" alt="���̵�/��й�ȣã��" /></div>
        <div class="pop01_con" id="find_main">
            <div class="pop01_tcon">
                <div class="pop01_tscon">
                    <span class="pop01_name">����� ���̵�<input type="text" name="user_id" title="���̵�" id="id" class="pop01_input_name"></span>
                    <span class="pop01_name">����� �̸�<input type="text" name="user_name" title="�̸�" id="name" class="pop01_input_name"></span>
                    <span class="pop01_phone">����� �̸���<input type="text" name="user_email" title="�̸����ּ�" id="email" class="pop01_input_mail"></span>
					<span class="pop01_mail" id="idfindCase1">���̵�� : <span id="mainNotice1" ></span> �Դϴ�</span>
					<span class="pop01_mail" id="idfindCase2">�н������ : <span id="mainNotice2" ></span> �Դϴ�</span>
                </div>
            </div>
            <div class="pop01_scon">
                <div class="pop01_sscon">
                    <span class="pop01_txt"><img src="./img/dot_arrow.gif" alt="" />���̵� ã���Ƕ��� ȸ�����Խ� �ۼ��� �̸��� �̸����ּҸ� �Է����ֽñ� �ٶ��ϴ�.<span class="pop01_indent"></span></span>
                    <span class="pop01_txt"><img src="./img/dot_arrow.gif" alt="" />�н����带 ã���Ƕ��� ȸ�����Խ� �ۼ��� ���̵�, �̸�, �̸����ּҸ� �Է����ֽñ�  �ٶ��ϴ�.<span class="pop01_indent"></span></span>
                </div>
            </div>
            <div class="pop01_btn">
                <span class="pop01_btn_ok"><a href="#"><img src="./img/pop_btn_ok.gif" alt="Ȯ��" style="border:0;" /></a></span>
                <span class="pop01_btn_can"><a href="#"><img src="./img/pop_btn_can.gif" alt="���" style="border:0;" /></a></span>
            </div>
        </div>
	</form>
    </div>
</div>
<!--//ui object -->
</body>
</html>