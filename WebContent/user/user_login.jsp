<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript" src="user/js/user_login.js"></script>
<!--content -->
<div id="content">
	<div class="sub_con">
		<input type="hidden" name="referer" value="" /><!-- �������������̵��ϱ� -->
		<!--content ������ġ -->
		<div class="sub_loca">
			<img src="./img/icon_home.gif" alt="������ġ" />Ȩ > �α���
		</div>
		<!--content Ÿ��Ʋ -->
		<div class="sub_v_ttm">
			<h2>�α���</h2>
		</div>
		<!--//content Ÿ��Ʋ -->
		<!--content �α��� -->
		<div class="lg_tt">
			<span><img width="10px" src="./img/mem_timg.gif" alt="���θ��� �̿��Ͻ÷��� �α������ּ���" /></span>
		</div>
		<div class="lg_box00">
			<div class="lg_box01" id="login_main">
				<div class="lg_sbox01">
					<div class="lg_stt">
						<img src="./img/log_tt.gif" alt="ȸ���α���" />
					</div>
					<div class="lg_id00">
						<span class="lg_sid">���̵�<input type="text" id="id" name="id" title="���̵�" class="log_input_sid"></span> 
						<span class="lg_spw">��й�ȣ<input type="password" id="pw" name="pw" title="��й�ȣ" class="log_input_spw"></span>
					</div>
					<span class="lg_bline"></span>
					<div class="lg_search00">
						<span class="lg_txt_sid"><img src="./img/txt_idpw.gif" alt="���̵�/��й�ȣ ã��" /></span> 
						<span class="lg_btn_sid"><a href="#"><img src="./img/btn_idpw.gif" alt="���̵�/��й�ȣ ã��" /></a></span>
					</div>
				</div>
				<div class="login_btn">
					<a href="#"><img src="./img/btn_mlogin.gif" alt="ȸ���α���" id="btnLogin" /> </a>
				</div>
			</div>
			<div class="lg_box02">
				<div class="lg_sbox02">
					<div class="lg_join00">
						<span class="lg_sname">�̸�<input type="text" name="name" title="�̸�" value="" class="log_sname_input"></span> 
						<span class="lg_smail">�̸���<input type="text" name="noMemEmail" title="�̸���" value="" class="log_smail_input"></span>
						<span class="lg_sphon">�ڵ���<input type="text" name="noMemMobile" title="�ڵ���" value="" class="log_sphon_input"></span>
					</div>
					 <div class="lg_join_txt">�ڵ�����ȣ�� (-) ���� �������� �Է��ϼ���.</div>
					<span class="lg_bline"></span>
					<div class="lg_search00">
						<span class="lg_txt_sjoin"><img src="./img/txt_join.gif" alt="ȸ�������� �Ͻø� ���� ������ ������ �� �ֽ��ϴ�." /></span> 
						<span class="lg_btn_sjoin"><a href="UserReg1p.do"><img src="./img/btn_join.gif" alt="ȸ������" /></a></span>
					</div>
				</div>
				<div class="login_btn">
					<a href="#"><img src="./img/btn_login.gif" alt="��ȸ���α���" id="btnNoLogin" style="margin-bottom:50px" /></a>
				</div>
			</div>
		</div>
		<!--//content �α��� -->
	</div>
</div>
<!--//content -->