<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>관리자모드(상품등록/수정)</title>
<div id="content">
<div class="admin_loca"> HOME 》상품관리   》상품등록/수정   》<b>[<span class="productListTitle"></span>]상품</b></div>
<div class="admin_title">[<span class="productListTitle"></span>]
상품 등록</div>
		
			<form name="frmMove" method="post">
			<input type="hidden" name="sKey" id="sKey" value="" />
			<input type="hidden" name="sType" id="sType" value="" />
			<input type="hidden" name="com_type" id="com_type" value="" />
			<input type="hidden" name="sort" id="sort" value="" />
			<input type="hidden" name="com_category" id="com_category" value="" />
			<input type="hidden" name="com_id" id="com_id" value="" />
			<input type="hidden" name="productKey" id="productKey" value="" />
			<input type="hidden" name="nPage" id="nPage" value="" />
			<input type="hidden" name="pPage" id="pPage" value="" />
			<input type="hidden" name="pKey" id="pKey" value="" />
			<input type="hidden" name="pType" id="pType" value="" />
			<input type="hidden" name="categoryA" id="categoryA" value="" />
			<input type="hidden" name="categoryB" id="categoryB" value="" />
			<input type="hidden" name="categoryC" id="categoryC" value="" />
			<input type="hidden" name="sYear" id="sYear" value="" />
			<input type="hidden" name="sMonth" id="sMonth" value="" />
			<input type="hidden" name="sDay" id="sDay" value="" />
			<input type="hidden" name="eYear" id="eYear" value="" />
			<input type="hidden" name="eMonth" id="eMonth" value="" />
			<input type="hidden" name="eDay" id="eDay" value="" />
			<input type="hidden" name="topSearch" id="topSearch" value="" />
			
			</form>

<div id="productWriteForm">
	<form name='frm' id='frm' method='post' enctype='multipart/form-data'>
		<input type="hidden" name="com_id" id="com_id" value=">" />
		<table class="boardinput" summary="상품 등록" style="width: 780px;">
			<tbody>
				<tr>
					<td class="td_cen" colspan="4"><span class="action"><img
							src="./sitehelper/img/admin_btn_enter.gif" type="button"
							class="clickbutton" id="submitbutton1" value="입력"/> <img
							src="./sitehelper/img/admin_btn_list.gif" type="button"
							class="clickbutton" id="listbutton1" value="리스트"/> <img
							src="./sitehelper/img/admin_btn_del.gif" type="button"
							class="clickbutton" id="deletebutton1" value="삭 제" /> <img
							src="./sitehelper/img/admin_btn_zero.gif" type="button"
							class="clickbutton" id="resetbutton1" value="초기화" /></span></td>
				</tr>
				<tr>
					<th class="th_center">위치</th>
					<td class="left" colspan="3"></td>
				</tr>
				<tr>
					<th class="th_center">상품명</th>
					<td class="left" colspan="3"><input type="text"
						class="input_box_txt" name="p_name" id="p_name"
						value="" style="width: 400px;" />
					<!-- class="inputbox250" --></td>
				</tr>
				<tr>
					<th class="th_center">상품코드</th>
					<td class="left"><input type="text" name="p_code" id="p_code"
						class="input_box_txt" readOnly="readOnly" value="" />
					<!-- class="optionText" --></td>
				</tr>
				<tr>
					<th class="th_center">카테고리</th>
					<td class="left" colspan="3">
						<div class="categoryBox">
							<div class="categoryGubun">대분류</div>
							<div class="categorySelectBox">
								<select name="categoryA" id="categoryA" class="selectBox"
									size="10">
									<option value="" selected="selected"></option>
								</select>
							</div>
						</div>
						<div class="categoryBox">
							<div class="categoryGubun">중분류</div>
							<div class="categorySelectBox">
								<select name="categoryB" id="categoryB" class="selectBox"
									size="10">
									<option value="" selected="selected"></option>
								</select>
							</div>
						</div>

					</td>
				</tr>
				<tr>
					<th class="th_center">검색키워드</th>
					<td class="left" colspan="3"><input type="text" name="keyword"
						id="keyword" value="" class="input_box_txt"/></td>
				</tr>
				<tr>
					<th class="th_center">옵션</th>
					<td class="left" colspan="3">
						<table style="border:0; cellpadding:0; cellspacing:0"
							class="admin_table03">
							<tr>
								<th class="th_center"><input type="text" name="optionText1"
									id="optionText1" value="" class="optionText" /></th>
								<th class="th_center"><input type="text" name="optionText2"
									id="optionText2" value="" class="optionText" /></th>
								<th class="th_center"><input type="text" name="optionText3"
									id="optionText3" value="" class="optionText" /></th>
								<th class="th_center"><input type="text" name="optionText4"
									id="optionText4" value="" class="optionText" /></th>
								<!--th class="eeeeBg"><input type="text" name="optionText3" id="optionText3" value="" class="optionText" /></th-->
							</tr>
							<tr>
								<td class="td_cen"><input type="text" name="optionValue1"
									id="optionValue1" value="" class="inputbox" /></td>
								<td class="td_cen"><input type="text" name="optionValue2"
									id="optionValue2" value="" class="inputbox" /></td>
								<td class="td_cen"><input type="text" name="optionValue3"
									id="optionValue3" value="" class="inputbox" /></td>
								<td class="td_cen"><input type="text" name="optionValue4"
									id="optionValue4" value="" class="inputbox" /></td>
							</tr>
							<tr>
								<th class="th_center"><input type="text" name="optionText5"
									id="optionText5" value="" class="optionText" /></th>
								<th class="th_center"><input type="text" name="optionText6"
									id="optionText6" value="" class="optionText" /></th>
								<th class="th_center"><input type="text" name="optionText7"
									id="optionText7" value="" class="optionText" /></th>
								<th class="th_center"><input type="text" name="optionText8"
									id="optionText8" value="" class="optionText" /></th>
							</tr>
							<tr>
								<td class="td_cen"><input type="text" name="optionValue5"
									id="optionValue5" value="" class="inputbox" /></td>
								<td class="td_cen"><input type="text" name="optionValue6"
									id="optionValue6" value="" class="inputbox" /></td>
								<td class="td_cen"><input type="text" name="optionValue7"
									id="optionValue7" value="" class="inputbox" /></td>
								<td class="td_cen"><input type="text" name="optionValue8"
									id="optionValue8" value="" class="inputbox" /></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<th class="th_center">상품구분</th>
					<td class="left" colspan="3">
						<table style="border:0; cellpadding:0; cellspacing:0"
							class="admin_table03">
							<tr>
								<th class="th_center">추천상품</th>
								<th class="th_center">인기상품</th>
							</tr>
							<tr>
								<td class="td_cen"><input type="checkbox"
									name="recommand_product" id="recommand_product" value="Y"
									 checked="checked"
									 /></td>
								<td class="td_cen"><input type="checkbox"
									name="new_product" id="new_product" value="Y"
									 checked="checked"  /></td>
							</tr>
						</table>
							</td>
				</tr>
				<tr>
					<th class="th_center">판매상태</th>
					<td class="left" colspan="3"><label><input
							type="radio" name="useType" value="Y"
							 checked="checked"
							 /> 승인</label> <label><input type="radio"
							name="useType" value="N" 
							checked="checked"  /> 미승인</label> <label><input
							type="radio" name="useType" value="P" 
							checked="checked"  /> 일시품절</label></td>
				</tr>
				<tr>
					<th class="th_center">상담판매</th>
					<td class="left" colspan="3"><input type="checkbox"
						name="priceType" value="Y" 
						checked="checked"  /> (주문 상담 판매 상품일경우 체크하세요 -- 가격 노출이
						안됩니다)</td>
				</tr>
				<tr>
					<th class="th_center">독립몰</th>
					<td class="left" colspan="3"><input type="checkbox"
						name="showType" value="Y" 
						checked="checked" /> 제휴몰은 가격노출이 안되고 독립몰에서만 1단계
						가격 노출을 원할때</td>
				</tr>
				<tr>
					<th class="th_center">판매단위</th>
					<td class="left" colspan="3"><select name="sale_unit"
						id="sale_unit" class="admin_select_site">
							<!-- class="inputbox" -->
							<option value="개" 
								selected="selected" >개</option>
							<option value="SET" 
								selected="selected" >SET</option>
							<option value="BOX" 
								selected="selected" >BOX</option>
					</select></td>
				</tr>
				<tr>
					<th class="th_center">원산지</th>
					<td class="left" colspan="3"><input name="origin_place_radio"
						type="radio" value="" /><span>원산지미확실</span> <input name="origin_place_radio"
						type="radio" value="국내산" /><span>국내산</span> <input name="origin_place_radio"
						type="radio" value="중국산" /><span>중국산</span>
					</td>
				</tr>
				<tr>
					<th class="th_center">가격</th>
					<td class="left" colspan="3"><span>상품원가 : </span><input
						type="text" name="prime_price" id="prime_price"
						value="" class="inputbox50" />원 <span
						id="marginTab"> <input type="button" id="margin1"
							value="33,30,27" class="clickbutton01" /> <input type="button"
							id="margin2" value="38,35,32" class="clickbutton01" /> <input
							type="button" id="margin3" value="50,47,44" class="clickbutton01" />
					</span> <br /> 
						<div id="B2CPrice">
							<span>판  매  가 : </span><input type="text" name="price" id="price"
								value="" class="inputbox50" />원
						</div></td>
				</tr>
				<tr class="center">
					<th class="th_center">옵션별가격<br /> <img
						src="./sitehelper/img/admin_btn_mplus.gif" type="button"
						class="clickbutton" id="optionPlus" value="추가" /> <img
						src="./sitehelper/img/admin_btn_sdel.gif" type="button"
						class="clickbutton" id="optionDel" value="제거" />
					</th>
					<td colspan="3">
						<div>옵션구분 | 옵션명+값 => 옵션명+금액;옵션명+금액;....</div> 
						<table class="product_option" style="width:600px; cellpadding:0; cellspacing:0; border:0">

							<tr>
								<td class="td_cen"><input type="text"
									name="option_title_update" value=""
									class="inputbox" style="width: 100px;" /></td>
								<td class="td_cen"><input type="text"
									name="option_value_update" value=""
									class="inputbox01" style="width: 400px; text-align: left" /><input
									type="hidden" name="option_seq_update" value="" />
								</td>
							</tr>
						</table> 
						<div id="product_option_box">
							<table class="product_option"  style="width:600px; cellpadding:0; cellspacing:0; border:0">
								<tr>
									<td class="td_cen"><input type="text" name="option_title"
										value="" class="inputbox" style="width: 100px;" /></td>
									<td class="td_cen"><input type="text" name="option_value"
										value="" class="inputbox01" style="width: 400px;" /></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<th class="th_center">결제방식</th>
					<td class="left" colspan="3"><label><input
							type="radio" name="charge_type" value="cash"
							 checked="checked"  />
							현금</label> <label><input type="radio" name="charge_type"
							value="card"  checked="checked"
							/> 카드</label> <label><input type="radio"
							name="charge_type" value="both"
							checked="checked"  /> 현금+카드</label></td>
				</tr>
				<tr>
					<th class="th_center">이미지</th>
					<td class="left" colspan="3"><input type="file" name="file"
						class="inputbox01" />
						<span id="img1"><img
							src="/upload/product/" border="0" />&nbsp;<img
							src="./sitehelper/img/admin_btn_del.gif" type="button"
							class="clickbutton" id="delimg1" /></span>
						<br /> <input type="file" name="file" class="inputbox01" />
						<span id="img2"><img
							src="/upload/product/" border="0" />&nbsp;<img
							src="./sitehelper/img/admin_btn_del.gif" type="button"
							class="clickbutton" id="delimg2" /></span>
						<br /> <input type="file" name="file" class="inputbox01" />
						<span id="img3"><img
							src="/upload/product/" border="0" />&nbsp;<img
							src="./sitehelper/img/admin_btn_del.gif" type="button"
							class="clickbutton" id="delimg3" /></span>
						<br /> <input type="file" name="file" class="inputbox01" />
						<span id="img4"><img
							src="/upload/product/" border="0" />&nbsp;<img
							src="./sitehelper/img/admin_btn_del.gif" type="button"
							class="clickbutton" id="delimg4" /></span>
						<br /> <input type="file" name="file" class="inputbox01" />
						<span id="img5"><img
							src="/upload/product/" border="0" />&nbsp;<img
							src="./sitehelper/img/admin_btn_del.gif" type="button"
							class="clickbutton" id="delimg5" /></span>
						</span></td>
				</tr>
				<tr>
					<th class="th_center">이미지 상세삽입</th>
					<td class="left" colspan="3"><input type="checkbox"
						name="content_include" id="content_include" value="Y"
						 checked="checked"  /></td>
				</tr>

				<tr>
					<th class="th_center">공통 이미지</th>
					<td class="left" colspan="3">
						 <label><input type="checkbox" name="comImg"
							value=""  checked="checked"
							> </label> 
					</td>
				</tr>

				<tr>
					<th class="th_center">상세설명</th>
					<td class="left" colspan="3">
						<div id="contentTab">
							<textarea id="prd_content" name="prd_content"
								style='width: 600px; height: 100px; display: none;'></textarea>
						</div>
						<br /> <input type="button" value="이미지첨부" id="imgPluse"
						name="imgPluse" class="clickbutton01" />
					</td>
				</tr>
				<tr>
					<th class="th_center">메모</th>
					<td class="left" colspan="3"><textarea id="prd_memo"
							name="prd_memo" class="textarea"
							style="width: 600px; height: 150px;"></textarea></td>
				</tr>
				<tr>
					<th class="th_center">연계상품<br /> <img
						src="./sitehelper/img/admin_btn_mplus.gif" type="button"
						class="clickbutton" id="productPlus" value="추가" /> <img
						src="./sitehelper/img/admin_btn_sdel.gif" type="button"
						class="clickbutton" id="productDel" value="제거" />
					</th>
					<td class="left" id="group_product_box" colspan="3">
						
						<table style="width:600px; cellpadding:0; cellspacing:0">
							<tr>
								<td>상품명</td>
								<td class="left"><input type="text" name="p_name_update"
									value="" class="inputbox01" /><input
									type="hidden" name="p_code_update" value="" /><input
									type="button" class="clickbutton" value="삭 제" /></td>
							</tr>
							<tr>
								<td>대표이미지</td>
								<td class="left"><input type="file" name="p_file_update"
									value="" class="inputbox01" /><img
									src="/upload/product/" border="0" /></td>
							</tr>
						</table> 
						<table class="group_product" style="width:600px; cellpadding:0;
							cellspacing:0">
							<tr>
								<th>상품명</th>
								<td class="left"><input type="text" name="product_name"
									value="" class="inputbox01" />
								<!-- class="inputbox250" --></td>
							</tr>
							<tr>
								<th>대표이미지</th>
								<td class="left"><input type="file" name="product_file"
									value="" class="inputbox01" />
								<!-- class="inputbox250" --></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="td_cen" colspan="4"><span class="action"><img
							src="./sitehelper/img/admin_btn_enter.gif" type="button"
							class="clickbutton" id="submitbutton2" value="입 력" /> <img
							src="./sitehelper/img/admin_btn_list.gif" type="button"
							class="clickbutton" id="listbutton2" value="리스트" /> <img
							src="./sitehelper/img/admin_btn_del.gif" type="button"
							class="clickbutton" id="deletebutton2" value="삭 제" /> <img
							src="./sitehelper/img/admin_btn_zero.gif" type="button"
							class="clickbutton" id="resetbutton2" value="초기화" /></span></td>
				</tr>
			</tbody>
		</table>
	</form>
</div>