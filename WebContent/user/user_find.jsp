<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript" src="./common/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript" src="user/js/user_findid.js"></script>
<style type="text/css">
.tab {
	border: 1px solid black;
	padding: 10px;
}
.idpw{position: relative; float: left;}
</style>
<div id="find_main">
	<div class="sub_loca">
		<img src="./img/icon_home.gif" alt="현재위치" />홈 > 아이디/비밀번호 찾기
	</div>

<div>
<table id="idpw" border="1">
	<tr>
		<td>아이디</td><td><input type="text" name="id" id="id"></td>
	</tr>
	<tr>
		<td>이름</td><td><input type="text" name="name" id="name"></td>
	</tr>
	<tr>
		<td>이메일</td><td><input type="text" name="email" id="email"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="button" value="ID/PW 찾기" id="idpwBtn" class="idpwBtn"></td>
	</tr>
</table>
</div>
		
		<table style="width:350px" class="mainTbl" id="mainNotice">
			<thead>
				<tr>
					<th class="th_center">ID/PW</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	
	<div class="pop01_scon">

		<div class="pop01_sscon">

			<span class="pop01_txt"><img src="./img/dot_arrow.gif" alt="" />회원가입시
				작성한 이름과 이메일주소를 <span class="pop01_indent">입력해주시기 바랍니다.</span></span>

		</div>

	</div>
</div>