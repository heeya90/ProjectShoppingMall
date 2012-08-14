<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript" src="user/js/user_login.js"></script>
<!--content -->
<div id="content">
	<div class="sub_con">
		<input type="hidden" name="referer" value="" /><!-- 이전페이지로이동하기 -->
		<!--content 현재위치 -->
		<div class="sub_loca">
			<img src="./img/icon_home.gif" alt="현재위치" />홈 > 로그인
		</div>
		<!--content 타이틀 -->
		<div class="sub_v_ttm">
			<h2>로그인</h2>
		</div>
		<!--//content 타이틀 -->
		<!--content 로그인 -->
		<div class="lg_tt">
			<span><img width="10px" src="./img/mem_timg.gif" alt="쇼핑몰을 이용하시려면 로그인해주세요" /></span>
		</div>
		<div class="lg_box00">
			<div class="lg_box01" id="login_main">
				<div class="lg_sbox01">
					<div class="lg_stt">
						<img src="./img/log_tt.gif" alt="회원로그인" />
					</div>
					<div class="lg_id00">
						<span class="lg_sid">아이디<input type="text" id="id" name="id" title="아이디" class="log_input_sid"></span> 
						<span class="lg_spw">비밀번호<input type="password" id="pw" name="pw" title="비밀번호" class="log_input_spw"></span>
					</div>
					<span class="lg_bline"></span>
					<div class="lg_search00">
						<span class="lg_txt_sid"><img src="./img/txt_idpw.gif" alt="아이디/비밀번호 찾기" /></span> 
						<span class="lg_btn_sid"><a href="#"><img src="./img/btn_idpw.gif" alt="아이디/비밀번호 찾기" /></a></span>
					</div>
				</div>
				<div class="login_btn">
					<a href="#"><img src="./img/btn_mlogin.gif" alt="회원로그인" id="btnLogin" /> </a>
				</div>
			</div>
			<div class="lg_box02">
				<div class="lg_sbox02">
					<div class="lg_join00">
						<span class="lg_sname">이름<input type="text" name="name" title="이름" value="" class="log_sname_input"></span> 
						<span class="lg_smail">이메일<input type="text" name="noMemEmail" title="이메일" value="" class="log_smail_input"></span>
						<span class="lg_sphon">핸드폰<input type="text" name="noMemMobile" title="핸드폰" value="" class="log_sphon_input"></span>
					</div>
					 <div class="lg_join_txt">핸드폰번호는 (-) 포함 띄지말고 입력하세요.</div>
					<span class="lg_bline"></span>
					<div class="lg_search00">
						<span class="lg_txt_sjoin"><img src="./img/txt_join.gif" alt="회원가입을 하시면 많은 혜택을 누리실 수 있습니다." /></span> 
						<span class="lg_btn_sjoin"><a href="UserReg1p.do"><img src="./img/btn_join.gif" alt="회원가입" /></a></span>
					</div>
				</div>
				<div class="login_btn">
					<a href="#"><img src="./img/btn_login.gif" alt="비회원로그인" id="btnNoLogin" style="margin-bottom:50px" /></a>
				</div>
			</div>
		</div>
		<!--//content 로그인 -->
	</div>
</div>
<!--//content -->