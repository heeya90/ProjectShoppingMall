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
	float:left;
	position:relative;
	margin:3px;
}
td{
	border:1px solid red;
	vertical-align: middle;
}
</style>
</head>
<body>
	<div style="width:39%">
		<table align="center" width="100%">
			<tr>
				<td colspan="3">
					이미지
				</td>
			</tr>
			<tr>
				<td>thumb1</td>
				<td>thumb2</td>
				<td>thumb3</td>
		</table>
	</div>
	
	<div style="width:59%">
		<table align="center" width="100%">
			<tr>
				<td style="width:40%">
					<label>상품명:</label></td>
				<td>
					<label></label></td>
			</tr>
			<tr>
				<td>
					<label>상품코드:</label></td>
				<td>
					<label></label></td>
			</tr>
			<tr>
				<td>
					<label>가격:</label></td>
				<td>
					<label></label></td>
			</tr>
			<tr>
				<td>
					<label>옵션:</label></td>
				<td>
					<label></label></td>
			</tr>
			<tr>
				<td>
					<label>제조사/원산지:</label></td>
				<td>
					<label></label></td>
			</tr>
			<tr>
				<td>
					<label>수량:</label></td>
				<td>
					<label></label></td>
			</tr>
			<tr>
				<td>
					<label>총 금액:</label></td>
				<td>
					<label></label></td>
			</tr>
			<tr>
				<td colspan="2">
					<label>총 구매 금액이 Xx이상시 배송비무료</label></td>
			</tr>
			<tr>
				<td colspan=2 align="center">
					<input type="button" value="장바구니">
					<input type="button" value="바로구매">
					<input type="button" value="찜하기">
				</td>
			</tr>
		</table>
	</div>
	
	<div style=width:99%>
		<label>상품 정보 및 설명</label> 
	</div>
</body>
</html>