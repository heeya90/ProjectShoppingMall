<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

	<div class="sub_loca">
		<img src="./img/icon_home.gif" alt="현재위치" />홈 > 마이페이지 > 개인정보 수정
	</div>
	
	<table class="jw_normal_table" style="align:center; width:70%">
		<tr>
			<td colspan="2">
				<label class="jw_lbl_title">회원정보 수정</label></td>
		</tr>
		<tr>
			<td class="jw_lheader" style="width:25%">
				<label class="jw_lbl_title">이름</label></td>
			<td>
				<input type="text" name="name" value=""></td>
		</tr>
		<tr>
			<td class="jw_lheader">
				<label class="jw_lbl_title">아이디</label></td>
			<td>
				<label>아이디디디</label></td>
		</tr>
		<tr>
			<td class="jw_lheader">
				<label class="jw_lbl_title">비밀번호</label></td>
			<td>
				<input type="password" name="pw">
		</tr>
		<tr>
			<td class="jw_lheader">	
				<label class="jw_lbl_title"> 비밀번호 확인</label></td>
			<td>
				<input type="password" name="rpw"></td>
		</tr>
		<tr>
			<td class="jw_lheader">
				<label class="jw_lbl_title">전화번호</label></td>
			<td>
				<input type="text" name="tel" value=""></td>
		</tr>
		<tr>
			<td class="jw_lheader">
				<label class="jw_lbl_title">휴대전화</label></td>
			<td>
				<input type="text" name="cell" value=""></td>
		</tr>
		<tr>
			<td class="jw_lheader">
				<label class="jw_lbl_title">우편번호</label></td>
			<td>
				<input type="text" name="zipcode" size="7"></td>
		</tr>
		<tr>
			<td class="jw_lheader">
				<label class="jw_lbl_title">주소</label></td>
			<td>
				<INPUT type="text" name="addr" size="25"> <br/>
				<INPUT type="text" name="detailaddr" size="50"></td>
		</tr>
		<tr>
			<td class="jw_lheader">
				<label class="jw_lbl_title">이메일</label></td>
			<td>
				<input type="text" name="email" value=""></td>
		</tr>
	</table>
	
	<div class="jw_div_right">
		<input type="submit" value="수정완료">
		<input type="reset"  value="수정취소"> 
	</div>
