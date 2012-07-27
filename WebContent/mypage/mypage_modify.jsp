<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style type="text/css">
div{
	border:1px solid blue;
	margin:3px;
}
td{
	border:1px solid red;
	vertical-align: middle;
	text-align:center;
}
table{
	border:1px solid black; 
	margin-top:50px; 
	padding:10px; 
}
.lbl_title{
	font-size:large;
	font-weight:bold;
}
</style>
	<table align="center" width="70%">
		<tr>
			<td colspan="2">
				<label class="lbl_title">회원정보 수정</label></td>
		</tr>
		<tr>
			<td>
				<label>이름</label></td>
			<td>
				<label><input type="text" name="name" value=""></label></td>
		</tr>
		<tr>
			<td>
				<label>아이디</label></td>
			<td>
				<label>아이디디디</label></td>
		</tr>
		<tr>
			<td>
				<label>비밀번호</label></td>
			<td>
				<input type="password" name="pw">
		</tr>
		<tr>
			<td>		
				<label> 비밀번호 확인</label></td>
			<td>
				<input type="password" name="rpw"></td>
		</tr>
		<tr>
			<td>
				<label>전화번호</label></td>
			<td>
				<input type="text" name="tel" value=""></td>
		</tr>
		<tr>
			<td>
				<label>휴대전화</label></td>
			<td>
				<input type="text" name="cell" value=""></td>
		</tr>
		<tr>
			<td>
				<label>우편번호</label></td>
			<td>
				<input type="text" name="zipcode" size="7"></td>
		</tr>
		<tr>
			<td>
				<label>주소</label></td>
			<td>
				<INPUT type="text" name="addr" size="25"> <br/>
				<INPUT type="text" name="detailaddr" size="50"></td>
		</tr>
		<tr>
			<td>
				<label>이메일</label></td>
			<td>
				<input type="text" name="email" value=""></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="수정완료">
				<input type="reset"  value="수정취소"></td>
		</tr>
		
	</table>