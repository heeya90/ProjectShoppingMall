<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style type="text/css">
div{
	text-align: center;
	line-height:30px;
	border:1px solid blue;
	padding:5px;
	margin:5px;
}
td{
	border:1px solid red;
	vertical-align: middle;
	text-align:center;
}
</style>
	<table style="width:100%">
		<tr>
			<td>
				<label>선택 </label></td>
			<td>
				<label>상품코드 </label></td>
			<td>		
				<label>상품이미지</label></td>
			<td>
				<label>상품명</label></td>
			<td>
				<label>판매가</label></td>
			<td>
				<label>수량</label></td>
			<td>
				<label>합계</label></td>
			<td>
				<label>주문</label></td>
			<td>
				<label></label></td>
		</tr>
		
		<tr>
			<td>
				<input type="checkbox" name="chck"></td>
			<td>
				<label></label>상품코드 </td>
			<td>
				<label></label>상품이미지 </td>
			<td>
				<label></label>상품명 </td>
			<td>
				<label></label>판매가 </td>
			<td>
				<label></label>수량 </td>
			<td>
				<label></label>합계 </td>
			<td>
				<label></label>주문 </td>
			<td>
				<input type="button" value="삭제"> </td>
		</tr>
		<tr>
			<td colspan="9" align="center">
				<label>상품금액 :</label>
				<label>0000000</label>
				<label> + </label>
				<label>배송비 :</label>
				<label>0000000</label>
				<label> =</label>
				<label>총결제 </label>
				<label>0000000원</label>
			</td>
		</tr>
		<tr>
			<td colspan="9" style="text-align:right">
				<INPUT type="button" value="전체구매">
				<INPUT type="button" value="선택구매">
				<INPUT type="button" value="전체삭제">
				<INPUT type="button" value="선택삭제">
				<INPUT type="button" value="찜">
			</td>
		</tr>
	</table>