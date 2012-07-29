<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>주문접수상세내역</title>

<div id="sub_contents">
	<div id="content">
		<div class="admin_loca">
			HOME - 주문관리 - <b>주문접수 상세내역</b>
		</div>
		<div class="admin_title">주문접수 상세내역</div>
		<!--div class="admin_total">총 주문건 : <b>10</b>건</div-->
		<table style="width: 780px" class="mainTbl">
			<thead>
				<tr>
					<th>상품코드</th>
					<th>이미지</th>
					<th>상품명</th>
					<th>제조업체</th>
					<th>수량</th>
					<th>판매가</th>
					<th>금액</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="td_cen">1014437<br></td>
					<td class="td_cen"><div class="adm_t01">
							<span class="adm_s01"><img src="" /></span>
						</div></td>
					<td class="td_cen">남성 캐쥬얼</td>
					<td class="td_cen">pShoppingMall</td>
					<td class="td_cen">1개</td>
					<td class="td_cen">55,000원</td>
					<td class="td_cen">55,000원</td>
				</tr>
				<tr>
					<td class="td_right" colspan="7">55,000원[구매금액] + 2,500원[배송료] +	 5,000원[VAT] = <b>57,500원</b>[결제금액]
					</td>
				</tr>
			</tbody>
		</table>

		<table style="width: 780px" class="admin_table04">
			<tr>
				<th class="th_center">진행현황</th>
				<td colspan="4"><b>배송완료 주문</b></td>
			</tr>
			<tr>
				<th class="th_center" rowspan="5">주문자정보</th>
			</tr>
			<tr>
				<th class="th_bg0">주문번호</th>
				<td class="td_bg0">GKJEP24473486</td>
				<th class="th_bg0">결제금액</th>
				<td class="td_bg0"><b>57,500원</b></td>
			</tr>
			<tr>
				<th class="th_bg">주문자</th>
				<td class="td_bg">중앙컴퓨터</td>
				<th class="th_bg">전화번호</th>
				<td class="td_bg"><input name="order_mobile" value="010-1234-5678" class="input_box_01"></td>
			</tr>
			<tr>
				<th class="th_bg">휴대전화</th>
				<td class="td_bg"><input name="order_mobile" value="010-1234-5678" class="input_box_01"></td>
				<th class="th_bg">이메일</th>
				<td class="td_bg"><input name="order_mobile" value="gbu194@naver.com" class="input_box_01"></td>
			</tr>
			<tr>
				<th class="th_bgb">팩스번호</th>
				<td class="td_bgb"><input name="order_mobile" value=""
					class="input_box_01"></td>
				<th class="th_bgb">결제방식</th>
				<td class="td_bgb">카드결제</td>
			</tr>
			<tr>
				<th class="th_center" rowspan="5">수령자정보</th>
			</tr>
			<tr>
				<th class="th_bgt">수령인명</th>
				<td class="td_bgt"><input name="order_mobile" value="중앙컴퓨터" class="input_box_01"></td>
				<th class="th_bgt">전화번호</th>
				<td class="td_bgt"><input name="order_mobile" value="010-1234-5678" class="input_box_01"></td>
			</tr>
			<tr>
				<th class="th_bg">우편번호</th>
				<td class="td_bg"> <input name="order_mobile" value="503-030" class="input_box_sel02"></td>
				<th class="th_bg">휴대전화</th>
				<td class="td_bg"><input name="order_mobile" value="010-1234-5678" class="input_box_01"></td>
			</tr>
			<tr>
				<th class="th_bg">주소</th>
				<td class="td_bg"> <input name="order_mobile" value="서울 강남구 서초동" class="input_box_sel03"></td>
				<th class="th_bg">상세주소</th>
				<td class="td_bg"> <input name="order_mobile" value="19-4번지 " class="input_box_sel03"></td>
			</tr>
			<tr>
				<th class="th_bgb">물품사용일자</th>
				<td class="td_bgb"><select name="sel" class="admin_select_year">
						<option value="2011">2011년</option>
						<option value="2012" selected>2012년</option>
						<option value="2013">2013년</option>
						<option value="2014">2014년</option>
				</select> <select name="sel" class="admin_select_month">
						<option value="1">1월</option>
						<option value="2">2월</option>
						<option value="3">3월</option>
						<option value="4">4월</option>
						<option value="5">5월</option>
						<option value="6">6월</option>
						<option value="7">7월</option>
						<option value="8">8월</option>
						<option value="9">9월</option>
						<option value="10" selected>10월</option>
						<option value="11">11월</option>
						<option value="12">12월</option>
				</select> <select name="sel" class="admin_select_day">
						<option value="1">1일</option>
						<option value="2">2일</option>
						<option value="3">3일</option>
						<option value="4">4일</option>
						<option value="5">5일</option>
						<option value="6">6일</option>
						<option value="7">7일</option>
						<option value="8">8일</option>
						<option value="9">9일</option>
						<option value="10">10일</option>
						<option value="11">11일</option>
						<option value="12">12일</option>
						<option value="13">13일</option>
						<option value="14">14일</option>
						<option value="15">15일</option>
						<option value="16">16일</option>
						<option value="17">17일</option>
						<option value="18">18일</option>
						<option value="19">19일</option>
						<option value="20">20일</option>
						<option value="21">21일</option>
						<option value="22">22일</option>
						<option value="23">23일</option>
						<option value="24">24일</option>
						<option value="25">25일</option>
						<option value="26">26일</option>
						<option value="27">27일</option>
						<option value="28">28일</option>
						<option value="29">29일</option>
						<option value="30">30일</option>
						<option value="31" selected>31일</option>
				</select></td>
				<th class="th_bgb">배송희망일자</th>
				<td class="td_bgb"><select name="sel" class="admin_select_year">
						<option value="2009">2009년</option>
						<option value="2010">2010년</option>
						<option value="2011" selected>2011년</option>
						<option value="2012">2012년</option>
						<option value="2013">2013년</option>
						<option value="2014">2014년</option>
				</select> <select name="sel" class="admin_select_month">
						<option value="1">1월</option>
						<option value="2">2월</option>
						<option value="3">3월</option>
						<option value="4">4월</option>
						<option value="5">5월</option>
						<option value="6">6월</option>
						<option value="7">7월</option>
						<option value="8">8월</option>
						<option value="9">9월</option>
						<option value="10" selected>10월</option>
						<option value="11">11월</option>
						<option value="12">12월</option>
				</select> <select name="sel" class="admin_select_day">
						<option value="1">1일</option>
						<option value="2">2일</option>
						<option value="3">3일</option>
						<option value="4">4일</option>
						<option value="5">5일</option>
						<option value="6">6일</option>
						<option value="7">7일</option>
						<option value="8">8일</option>
						<option value="9">9일</option>
						<option value="10">10일</option>
						<option value="11">11일</option>
						<option value="12">12일</option>
						<option value="13">13일</option>
						<option value="14">14일</option>
						<option value="15">15일</option>
						<option value="16">16일</option>
						<option value="17">17일</option>
						<option value="18">18일</option>
						<option value="19">19일</option>
						<option value="20">20일</option>
						<option value="21">21일</option>
						<option value="22">22일</option>
						<option value="23">23일</option>
						<option value="24">24일</option>
						<option value="25">25일</option>
						<option value="26">26일</option>
						<option value="27">27일</option>
						<option value="28">28일</option>
						<option value="29">29일</option>
						<option value="30">30일</option>
						<option value="31" selected>31일</option>
				</select></td>
			</tr>
			<tr>
				<th class="th_center" rowspan="3">결제정보</th>
			</tr>
			<tr>
				<th class="th_bgt">거래번호</th>
				<td class="td_bgt">000000</td>
				<th class="th_bgt">카드종류</th>
				<td class="td_bgt">광주</td>
			</tr>
			<tr>
				<th class="th_bgb">승인번호</th>
				<td class="td_bgb">654546546</td>
				<th class="th_bgb">승인일자</th>
				<td class="td_bgb">20111001125456</td>
			</tr>
			<tr>
				<th class="th_center" rowspan="2">메모사항</th>
			</tr>
			<tr>
				<td colspan="6"><textarea class="textarea01"></textarea></td>
			</tr>
		</table>

		<div class="admin_list">
			<input type="button" name="list_btt" value="리스트"
				class="clickbutton07" onclick=""> <input type="button"
				name="del_btt" value="주문수정하기" class="clickbutton08" onclick="">
		</div>
		<!--div class="admin_list"><span><a href="#">이전10개</a></span>  <span><a href="#">이전</a></span>  <a href="#">1</a>  |  <a href="#">2</a>  |  <a href="#">3</a>  |  <a href="#">4</a>  |  <a href="#">5</a>  <span><a href="#">다음</a></span>  <span><a href="#">다음10개</a></span>
		</div-->
	</div>

</div>
