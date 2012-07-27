<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>주문접수상세내역</title>
<style type="text/css">
td{
	border:1px solid red;
	text-align:center;
}
div{
	border:1px solid blue;
	padding:5px;
	margin:5px;
}
</style>
</head>
<body>
	<div>
		<table width="100%">
			<tr>
				<td>주문코드</td>
				<td>구매자</td>
				<td>배송지</td>
				<td>주문상황</td>
				<td>주문일자</td>
				<td>금액</td>
				<td>입금일</td>
			</tr>
			<tr>
				<td>12345678</td>
				<td>홍길동</td>
				<td>서울시 은평구 갈현동 000-000</td>
				<td>??</td>
				<td>2000-00-00</td>
				<td>10000000</td>
				<td>2000-00-00</td>
			</tr>
		</table>
	</div>
	
	<div align="right">
		<label>배송비 결재여부 : </label>
		<label />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label>총합계금액 : </label>
		<label />
		<label>원 </label>
	</div>
	
	<div>
		<table width="100%">
			<tr>
				<td width="30%"> <label>주문자정보</label> </td>
				<td> <label /> </td>
			</tr>
			<tr>
				<td> <label>이름</label> </td>
				<td> <label /> </td>
			</tr>
			<tr>
				<td> <label>전화번호</label> </td>
				<td> <label /> </td>
			</tr>
			<tr>
				<td> <label>폰번호</label> </td>
				<td> <label /> </td>
			</tr>
			<tr>
				<td> <label>주소</label> </td>
				<td> <label /> </td>
			</tr>
			<tr>
				<td> <label>이메일</label> </td>
				<td> <label /> </td>
			</tr>
		</table>
	</div>

	<div>
		<table width="100%">
			<tr>
				<td width="30%"> <label>배송정보</label> </td>
				<td> <label /> </td>
			</tr>
			<tr>
				<td> <label>이름</label> </td>
				<td> <label /> </td>
			</tr>
			<tr>
				<td> <label>전화번호</label> </td>
				<td> <label /> </td>
			</tr>
			<tr>
				<td> <label>폰번호</label> </td>
				<td> <label /> </td>
			</tr>
			<tr>
				<td> <label>주 소</label> </td>
				<td> <label /> </td>
			</tr>
			<tr>
				<td> <label>요구사항</label> </td>
				<td> <label /> </td>
			</tr>
		</table>	
	</div>
	
	<div align="right">
		<label>주문진행 </label>
		<input type="button" value="셀렉트박스">
		<input type="button" value="입력">
	</div>

</body>
</html>