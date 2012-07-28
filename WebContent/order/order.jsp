<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
</style>
</head>
<body>
	<table style="width:100%">
		<tr>
			<td colspan=5><h2>주문자 정보</h2></td>
		</tr>
		<tr>
			<td>
				<label>이름</label></td>
			<td>
				<label>전화번호</label></td>
			<td>
				<label>휴대전화</label></td>
			<td>
				<label>주소</label></td>
			<td>
				<label>이메일</label></td>
		</tr>
		<tr>
			<td>
				<label>이름</label></td>
			<td>
				<label>전화번호</label></td>
			<td>
				<label>휴대전화</label></td>
			<td>
				<label>주소</label></td>
			<td>
				<label>이메일</label></td>
		</tr>
	</table>
	
	<div style="text-align:right">
		<input type="checkbox" value="same">주문정보 동일
	</div>	
	
	<table style="width:100%">
		<tr>
			<td colspan="5"><h2>배송정보</h2></td>
		</tr>
		<tr>
			<td>
				<label>이름</label></td>
			<td>
				<label>전화번호</label></td>
			<td>
				<label>휴대전화</label></td>
			<td>
				<label>주소</label></td>
			<td>
				<label>이메일</label></td>
		</tr>
		<tr>
			<td>
				<label>이름</label></td>
			<td>
				<label>전화번호</label></td>
			<td>
				<label>휴대전화</label></td>
			<td>
				<label>주소</label></td>
			<td>
				<label>이메일</label></td>
		</tr>
	</table>
	<div style="text-align:center">
		<label>무통장 입금</label>
	</div>
		
	<div style="text-align:right">
		<input type="button" value="결제">
		<input type="button" value="취소">
	</div>
</body>
</html>