<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

	<div class="sub_loca" style="float:left">
		<img src="./img/icon_home.gif" alt="현재위치" />홈 > 장바구니
	</div>
	<table class="jw_normal_table" style="align:center; width:100%">
		<tr>
			<td class="jw_theader">
				<label class="jw_lbl_title">선택 </label></td>
			<td class="jw_theader">
				<label class="jw_lbl_title">상품코드 </label></td>
			<td class="jw_theader">
				<label class="jw_lbl_title">상품이미지</label></td>
			<td class="jw_theader">
				<label class="jw_lbl_title">상품명</label></td>
			<td class="jw_theader">
				<label class="jw_lbl_title">판매가</label></td>
			<td class="jw_theader">
				<label class="jw_lbl_title">수량</label></td>
			<td class="jw_theader">
				<label class="jw_lbl_title">합계</label></td>
			<td class="jw_theader">
				<label class="jw_lbl_title">주문</label></td>
			<td class="jw_theader">
				<label class="jw_lbl_title"></label></td>
		</tr>
		
		<tr>
			<td class="jw_td_center">
				<input type="checkbox" name="chck"></td>
			<td class="jw_td_center">
				<label></label>상품코드 </td>
			<td class="jw_td_center">
				<label></label>상품이미지 </td>
			<td class="jw_td_center">
				<label></label>상품명 </td>
			<td class="jw_td_center">
				<label></label>판매가 </td>
			<td class="jw_td_center">
				<label></label>수량 </td>
			<td class="jw_td_center">
				<label></label>합계 </td>
			<td class="jw_td_center">
				<label></label>주문 </td>
			<td class="jw_td_center">
				<input type="button" value="삭제"> </td>
		</tr>
		<tr>
			<td class="jw_td_center" colspan="9">
				<label>상품금액 :</label>
				<label class="jw_lbl_pop">0000000</label>
				<label> + </label>
				<label>배송비 :</label>
				<label class="jw_lbl_pop">0000000</label>
				<label> =</label>
				<label>총결제 </label>
				<label class="jw_lbl_pop">0000000</label>
				<label>원 </label>
			</td>
		</tr>
		<tr>
			<td class="jw_td_center" colspan="9">
				<INPUT type="button" value="전체구매">
				<INPUT type="button" value="선택구매">
				<INPUT type="button" value="전체삭제">
				<INPUT type="button" value="선택삭제">
				<INPUT type="button" value="찜">
			</td>
		</tr>
	</table>