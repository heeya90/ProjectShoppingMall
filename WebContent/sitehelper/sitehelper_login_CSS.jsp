<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="./common/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="./common/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript" src="./js/sitehelper_login.js"></script>

<title>관리자모드 로그인 페이지</title>

</head>
<body>

	<div id="login_main">
		<div class="login_img">
			<div class="login_left">
				<img src="./img/admin_login_ltt.gif" />
			</div>
			<div class="login_right">
				<span class="login_ttt"><img src="./img/admin_login_ttt.gif" /></span>
				<div class="login_bg">
				<div class="login_uid">
					<span class="login_id"><img src="./img/admin_login_id.gif" alt="아이디" />
					<input type="text" class="text_Box" name="adminId" id="adminId" /></span>
					<span class="login_pw"><img	src="./img/admin_login_pw.gif" alt="비밀번호" />
					<input type="password" class="text_Box" name="adminPwd" id="adminPwd" /></span>
				</div>

				<div class="login_btn">
					<img src="./img/admin_login_btn.gif" border="0" alt="로그인" id="loginBtn" />
				</div>
				<div class="login_txt">	관리자 <b>아이디</b>와 <b>비밀번호</b>를 입력하여 주십시오.
				</div>
				
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>