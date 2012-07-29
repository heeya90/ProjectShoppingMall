<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>관리자모드(상품관리)</title>

<div id="content">
		<div class="admin_loca">HOME 》상품관리  》상품리스트  》[<span class="productListTitle"></span>]</div>
		<div class="admin_title"></div>
<form name="frmMove" method="post">
<input type="hidden" name="sKey" id="sKey" value="" />
<input type="hidden" name="sType" id="sType" value="" />
<input type="hidden" name="com_type" id="com_type" value="" />
<input type="hidden" name="sort" id="sort" value="" />
<input type="hidden" name="com_id" id="com_id" value="" />
<input type="hidden" name="productKey" id="productKey" value="" />
<input type="hidden" name="nPage" id="nPage" value="" />
<input type="hidden" name="pPage" id="pPage" value="" />
<input type="hidden" name="com_category" id="com_category" value="" />

<input type="hidden" name="p_code" id="p_code" value="" />
			<div id="productListForm">
			<div class="categoryGubun">등록상품 : <span id="nTotal"></span>개 <input type="button" class="clickbutton02" id="allcategory" value="전체보기" /></div>
			<div class="categoryBox">
				<div class="categoryGubun">대분류</div>
				<div class="categorySelectBox">
					<select name="categoryA" id="categoryA" class="selectBox" size="10" >
					</select><input type="hidden" value="" />
				</div>				
			</div>
			<div class="categoryBox">
				<div class="categoryGubun">중분류</div>
				<div class="categorySelectBox">
					<select name="categoryB" id="categoryB" class="selectBox" size="10" >
					</select><input type="hidden" value="" />
				</div>				
			</div>
			<div class="categoryBox">
				<div class="categoryGubun">소분류</div>
				<div class="categorySelectBox">
					<select name="categoryC" id="categoryC" class="selectBox" size="10" >
					</select><input type="hidden" value="" />
				</div>				
			</div>
			<div style="clear:both;"></div>
			<div style="width:780px;text-align:center;padding-top:10px;">
				<input type="button" name="companyListGo" value=" 매입업체 리스트 " class="clickbutton01" />
				<input type="button" name="productGo" value=" 상품등록 " class="clickbutton01" />
				<input type="button" name="allUpdate" value=" 전체 수정 " class="clickbutton01" />
			</div>
			<div class="admin_tsearch">
			<!--div class="topSort" style="text-align:center;"-->
				<span class="productListTitle"></span>
				<select name="pType" id="pType" class="selectBox" style="width:100px;">
					<option value="p_name" selected="selected" >상품명</option>
					<option value="p_code"  selected="selected" >상품코드</option>
				</select> 
				<input type="text" class="inputbox" name="pKey" id="pKey" style="width:100px;" value="" /> 
				<select name="sYear" id="sYear" class="selectBox" style="width:55px;">					
				</select><input type="hidden" value="" />
				<select name="sMonth" id="sMonth" class="selectBox" style="width:55px;">					
				</select><input type="hidden" value="" />
				<select name="sDay" id="sDay" class="selectBox" style="width:55px;">
				</select><input type="hidden" value="" /> ~ 
				<select name="eYear" id="eYear" class="selectBox" style="width:55px;">					
				</select><input type="hidden" value="" />
				<select name="eMonth" id="eMonth" class="selectBox" style="width:55px;">					
				</select><input type="hidden" value="" />
				<select name="eDay" id="eDay" class="selectBox" style="width:55px;">
				</select><input type="hidden" value="" />
				<select name="pPageSize" class="selectBox" style="width:50px;">
					<option value="20"  selected="selected" >20개</option>
					<option value="50"  selected="selected" >50개</option>
					<option value="100"  selected="selected" >100개</option>
					<option value="200"  selected="selected" >200개</option>
				</select>
				<input type="button" name="searchButton" id="searchButton" value="검 색" class="clickbutton02" />

			</div>
			
		<div class="admin_arr_cen">
				<span class="admin_arr01"><!--label><input type="radio" name="productSort" value="inputday_asc" />등록순↑</label--> <label><input type="radio" name="productSort" value="categoryC_asc" />카테고리↑</label> <!--label><input type="radio" name="productSort" value="price1_asc" />가격순↑</label--> <!--label><input type="radio" name="productSort" value="orderCont_asc" />매출↑</label--> <!--label><input type="radio" name="productSort" value="priceUpdateDay_asc" />단가수정↑</label--> <label><input type="radio" name="productSort" value="inputday_desc"  checked="checked" />등록순↓</label> <label><input type="radio" name="productSort" value="categoryC_desc" />카테고리↓</label> <label><input type="radio" name="productSort" value="price1_desc" />가격순↓</label> <label><input type="radio" name="productSort" value="orderCont_desc" />매출↓</label> <label><input type="radio" name="productSort" value="priceUpdateDay_desc" />단가수정↓</label><label><input type="radio" name="productSort" value="readCnt_desc" />조회순↓</label></span>
			</div>
			<table summary="상품 리스트" class="admin_table00"><!-- class="boardlist"-->
				<thead>
				<tr>
					<th class="th_center">분류</th>
					<th class="th_center">이미지</th>
					<th class="th_center">상품명</th>
					<th class="th_center">승인</th>
					<th class="th_center">공급가<br />판매가</th>
					<th class="th_center">조회</th>
					<th class="th_center">매출</th>
					<th class="th_center">등록/수정</th>				
					<th class="th_center">가격수정</th>		
				</tr>
				</thead>
				<tbody>	
					<tr class='trClass'>						
						<!--td><input type="checkbox" name="" class="" value="" /></td-->
						<td style="text-align:left;"><span class='category_map_list' ></span></td>
						<td><span class='product_img_list'></span></td>
						<td class="left" style="width:150px;word-break:break-all;">
							[<span class="p_code_list"></span>]
							<br />
							<span class='pointer'><span class='p_name_list'></span></span> </span><br /><span class="optionYN_list"></span>
						</td>
						<td><select class="admin_select_year" name="useType"><option value="Y"  >승인</option><option value="N"  >미승인</option><option value="P"  >품절</option></select>
							<br /><input type="button" name="codeplus" value="코드추가" class="clickbutton09" />
						</td>
						<td><span class="prime_price_list"></span><br />
							<span class="price_list"></span>
						</td>
						<td><input type="text" name="readCnt" class="readCnt_list" value="{{readCnt}}" /><input type="hidden" name="p_code_list" value="{{p_code}}" /></td>
						<td><span class="orderCont_list"></span></td>
						<td><span class='datetime_list'></span></td>
						<td><span class='priceupdate_list'></span></td>
					</tr>
				</tbody>	
				<tfoot>
				<tr>
					<td  class="td_cen" colspan="9" id="pageing"></td>							
				</tr>
				</tfoot>				
			</table>
			
			<div style="width:780px;text-align:center;padding-top:10px;">				
				<input type="button" name="companyListGo" value=" 매입업체 리스트 " class="clickbutton01" />
				<input type="button" name="productGo" value=" 상품등록 " class="clickbutton01" />
				<input type="button" name="allUpdate" value=" 전체 수정 " class="clickbutton01" />
				
			</div>
			</div>
				
		</form>
		