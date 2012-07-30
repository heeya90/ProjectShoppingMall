<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<title>주문접수리스트</title>
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

	<div align="right">
		<label>날짜별</label>
		<input type="text">
		<label>~</label>
		<input type="text">
		<input type="button" value="검색">
		<input type="button" value="전체보기">
		<input type="button" value="오늘검색">
	</div>
	
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
		<input type="button" value="일괄처리">
		<input type="button" value="입력">
	</div>
