<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>회원가입</title>

<style type="text/css">
div{
	border:1px solid blue;
}
td{
	border:1px solid red;
	vertical-align: middle;
	text-align:center;
}
table{
	border:1px solid black; 
	padding:10px; 
}
.lbl_title{
	font-size:large;
	font-weight:bold;
}
</style>
</head>
<body>
<form action="user_success.jsp">
	<table align="center" width="100%" style="margin-top:50px; margin-bottom:5px">
		<tr>
			<td> 
				<label class="lbl_title">이용약관</label></td>
		</tr>
		<tr>
			<td>
				<div>이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용</div>
				<div>이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용</div>
				<div>이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용이용</div>
			</td>
		</tr>
	</table>
	
	<div style="width:100%; text-align:right">
		<input type="checkbox">
		<label>동의합니다</label>
	</div>
	
	<table align="center">
		<tr>
			<td colspan="2">
				<label class="lbl_title">회원정보</label></td>
		</tr>
		
		<tr>
			<td style="width:40%">
				<label>이름</label></td>
			<td>
				<INPUT type="text" name="name"> </td>
		</tr>
		
		<tr>
			<td> 
				<label>아이디</label></td>
			<td>
				<INPUT type="text" name="id"> </td>
		</tr>
		
		<tr>
			<td>
				<label>비밀번호</label></td>
			<td>
				<INPUT type="password" name="pw"></td>
		</tr>
		
		<tr>
			<td>
				<label>비밀번호확인</label></td>
			<td>
				<INPUT type="password" name="rpw"> </td>
		</tr>
		
		<tr>
			<td>
				<label>전화번호</label></td>
			<td>
				<INPUT type="text" name="tel"> </td>
		</tr>
		
		<tr>
			<td>
				<label>휴대폰</label></td>
			<td>
				<INPUT type="text" name="cell"> </td>
		</tr>
		
		<tr>
			<td>
				<label>우편번호</label></td>
			<td> <input type="text" name="zipcode" size="7"> </td>
		</tr>
		
		<tr>
			<td>
				<label>주소</label></td>
			<td>
				<INPUT type="text" name="addr"> <br/> 
				<INPUT type="text" name="detailaddr">
			</td>
		</tr>
		
		<tr>
			<td>
				<label>이메일</label></td>
			<td>
				<INPUT type="text" name="email" size="25"> </td>
		</tr>
		
		<tr>
			<td colspan="2" align="right">
				<input type="submit" value="가입">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
</form>
</body>
</html>