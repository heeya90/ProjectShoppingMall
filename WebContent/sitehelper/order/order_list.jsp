<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<title>주문접수리스트</title>

<div id="sub_contents">

	<div id="content">

		<div class="admin_loca">HOME - 주문관리 - <b>주문접수 리스트</b></div>
		<div class="admin_title">주문접수 리스트</div>
		<div class="admin_total">총 주문 : <b></b>건</div>

<!-- 검색 부분 시작 -->
		<div class="admin_tsearch">
			<div class="admin_tss00">
				<div class="admin_tss">

					<span class="admin_tss_01">
						<select name="syear" class="admin_select_year">
							<option value="" selected="selected">년</option>
						</select>
			
						<select name="smonth" class="admin_select_month">
							<option value="" selected="selected">월</option>
						</select>
						<select name="sday" class="admin_select_day">
							<option value="" selected="selected">일</option>
						</select> ~ 
						<select name="eyear" class="admin_select_year">
							<option value="" selected="selected">년</option>
						</select>
						<select name="emonth" class="admin_select_month">
							<option value="" selected="selected">월</option>
						</select>
						<select name="eday" class="admin_select_day">
							<option value="" selected="selected">일</option>
						</select>
						<select name="shop_code" class="admin_select_site"  disabled >							
							<option value="" selected="selected">전체사이트</option>
							<option value="" selected="selected"></option>
								
						</select>
					</span>


					<span class="admin_tss_02">
				
						<select name="status" class="admin_select_mem">
							<option value="" selected="selected" >전체주문</option>
							<option value="1"selected="selected" >입금확인중</option>
							<option value="2" selected="selected" >입금확인</option>
							<option value="3" selected="selected" >배송준비</option>
							<option value="4" selected="selected" >배송중</option>
							<option value="5" selected="selected" >배송완료</option>
							<option value="6" selected="selected" >주문취소</option>
						</select>
						<select name="pay_type" class="admin_select_sel">
							<option value="" selected="selected">결제방법</option>
							<option value="cash" selected="selected">현금결제</option>
							<option value="card" selected="selected">카드결제</option>
							<option value="vbank" selected="selected">가상계좌</option>
						</select>
						<select name="sType" class="admin_select_sel">
							<option value="ord_no"  selected="selected" >주문번호</option>
							<option value="sname" selected="selected" >주문자명</option>
						</select>
						<input type="text" name="sKey" class="input_box_sel01" value="" />
					</span>

				</div>
				<div class="admin_tss_bt">
					<span class="admin_tss_btn"><a href="#"><img src="./sitehelper/img/admin_btn_search.gif" alt="검색" /></a></span>
				</div>
			</div>
		</div>
<!-- 검색 부분 끝 -->

<input type="hidden" name="delivery_code" id="deliveryCode" value="" />
		<table style="width:780px" class="mainTbl">
			<thead>
				<tr>
					<th>주문번호<br>주문자명</th>
					<th class="th_cen200">상품/판매가/수량<br>판매금액</th>
					<th class="th_cen105">출고확인</th>
					<th class="th_cen75">납품희망일</th>
					<th>결제금액<br>결제방법</th>
					<th>주문일시</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="td_cen">
					<a href="#" class="memoLayer">▼</a><div class="textLayer" style="line-height:21px;position:absolute;display:none;background:white;margin-left:40px;margin-top:-2px;padding:15px;border:1px solid #e5422c;text-align:left;"></div><br>
					<a href="order_list.jsp"></a>
					<br /><br />
					</td>
					<td class="td_center" colspan="3">
						<table class="admin_table07">
							<tr>
								<td class="tbl01_td01">
									<div class="">
										<div class="adm_t01">
											<span class="adm_s01"><a href=""><img src="" width="50" height="50" /></a></span>
											<span class="adm_s02"><a href="">[]</a><br><a href=""></a></span>
											<span class="adm_s01"><img src="" width="50" height="50" /></span>
											<span class="adm_s02"><br></span>
										</div>
										
										<div class="adm_t02">
											<span class="adm_s01">판매가:×개 <br></span>
											<span class="adm_s010">
											<a href="stiker_list.asp?sKey="></a>
												</span><br><span class="adm_s02"></span>
											<span class="adm_s03">-=<b>[%]</b></span>
										</div>
										
									</div>
																		
								</td>								
								<td class="tbl03_td02">
									<b></b><br />
									<br />
									<select name="delivery" class="admin_select_opt01">
										<option value="">배송업체</option>
										<option value=""  selected="selected"></option>
									</select><span class="delivery_number"><b>☎</b></span><div class="de_num"><span class="phone"></span> <span class="x">x</span></div> <br>
									<input name="delivery_number" class="input_box_sel02" value="" /><br />
									<input type="text" class="datepicker" name="delivery_day" value="" readonly="readonly" />
									<input type="button" value="저장" class="clickbutton03" name="order_delivery_click" /><input type="hidden" value="" />
								</td>								
								<td class="tbl02_td01">									
									<b></b><br><input type="hidden" name="com_id" value="" />
									<b>일반</b><b>긴급</b><b><span>배송</span><span>특이</span></b>
								</td>
							</tr>
					</table>

					</td>
					
					<!-- order 테이블에 있는 실제 결제금액, vat 뺀 금액으로 마진 계산-->
					<td class="td_cen"><b></b><!--주문건당 마진추가--><br /><span>원<br></span><!--//주문건당 마진추가-->카드결제 무통장입금 가상계좌<br> 
						<select name="order_status" class="admin_select_mem">							
							<option value="1" selected="selected" >입금확인중</option>
							<option value="2" selected="selected" >입금확인</option>
							<option value="3" selected="selected" >배송준비</option>
							<option value="4" selected="selected" >배송중</option>
							<option value="5" selected="selected" >배송완료</option>
							<option value="6" selected="selected" >주문취소</option>
						</select>
						<br /> 
						<input type="hidden" name="ord_no" value="" />
						<input type="button" value="저장" name="order_status_click" class="clickbutton03">
						
					</td>
					<td class="td_cen">
					<br>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="admin_list">
		<span><a href="&nPage=">이전10개</a></span>  
		<span><a href="&nPage=">이전</a></span>  
		<a href="&nPage="></a> |  
		<span><a href="&nPage=">다음</a></span>  
		<span><a href="&nPage=">다음10개</a></span>
		</div>
	</div>
</div>
