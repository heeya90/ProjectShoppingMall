<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style type="text/css">
.tab{
	border:1px solid black; 
	margin-top:50px; 
	padding:10px; 
}
.lbl_title{
	font-size:large;
	font-weight:bold;
}
</style>
<div class="sub_loca"><img src="./img/icon_home.gif" alt="현재위치" />홈 > 마이페이지 > 개인정보 수정</div>
	<div class="join02_form01">
	<table width="70%" class="join02_form02">
		<tr>
			<td colspan="2">
				<label class="lbl_title">회원정보 수정</label></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label>이름</label></td>
			<td class="join02_right">
				<label><input type="text" name="name" value=""></label></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label>아이디</label></td>
			<td class="join02_right">
				<label>아이디디디</label></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label>비밀번호</label></td>
			<td class="join02_right">
				<input type="password" name="pw">
		</tr>
		<tr>
			<td class="join02_left01">	
				<label> 비밀번호 확인</label></td>
			<td class="join02_right">
				<input type="password" name="rpw"></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label>전화번호</label></td>
			<td class="join02_right">
				<input type="text" name="tel" value=""></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label>휴대전화</label></td>
			<td class="join02_right">
				<input type="text" name="cell" value=""></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label>우편번호</label></td>
			<td class="join02_right">
				<input type="text" name="zipcode" size="7"></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label>주소</label></td>
			<td class="join02_right">
				<INPUT type="text" name="addr" size="25"> <br/>
				<INPUT type="text" name="detailaddr" size="50"></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label>이메일</label></td>
			<td class="join02_right">
				<input type="text" name="email" value=""></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="수정완료">
				<input type="reset"  value="수정취소"></td>
		</tr>
		
	</table>
	</div>