<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript" src="./common/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript" src="user/js/user_find.js"></script>
<style type="text/css">
.tab {
	border: 1px solid black;
	padding: 10px;
}
</style>
<div id="find_main">
	<div class="sub_loca">
		<img src="./img/icon_home.gif" alt="현재위치" />홈 > 아이디/비밀번호 찾기
	</div>

	<table bgcolor="0066FF" align="center" width="50%">
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" id="name"></td>
		</tr>

		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" id="email"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="아이디찾기" id="idBtn">
				<input type="button" value="비밀번호찾기" id="pwBtn">
			</td>
		</tr>
	</table>
	<div class="pop01_scon">

		<div class="pop01_sscon">

			<span class="pop01_txt"><img src="./img/dot_arrow.gif" alt="" />회원가입시
				작성한 이름과 이메일주소를 <span class="pop01_indent">입력해주시기 바랍니다.</span></span>

		</div>

	</div>
</div>