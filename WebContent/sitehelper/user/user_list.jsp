<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<title>관리자모드(사용자 리스트)</title>

<div id="sub_contents">
	<div id="content">
		<div class="admin_loca">HOME - 회원관리 - <b>회원리스트</b></div>
		<div class="admin_title">회원리스트</div>
		<div class="admin_total">회원수 : <b></b>명</div>
<!-- 검색 부분 시작 -->
		<div class="admin_tsearch">
			<div class="admin_tss00">
				<div class="admin_tss">
					<span class="admin_tss_01">
						<select name="syear" class="admin_select_year">
							<option value="" selected="selected">년</option>
						</select>
						<select name="smonth" class="admin_select_month">
							<option value=""selected="selected">월</option>
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
						<select name="shop" class="admin_select_site" disabled>
							<option value="" selected="selected">전체사이트</option>
							<option value="" selected="selected"></option>
						</select>
					</span>
					<span class="admin_tss_02">
						<select name="status" class="admin_select_mem">
							<option value="Y" selected="selected" >탈퇴회원포함</option>
							<option value="N" selected="selected" >탈퇴회원제외</option>			
						</select>
						<select name="sType" class="admin_select_sel">
							<option value="name" selected="selected">이름</option>
							<option value="userid" selected="selected">아이디</option>			
							<option value="juso" selected="selected">주소</option>			
						</select>
						<input type="text" name="sKey" class="input_box_sel" />
					</span>
				</div>
				<div class="admin_tss_bt">
					<span class="admin_tss_btn"><a href="#" id="memSearchGo"><img src=".
					/img/admin_btn_search.gif" alt="검색" /></a></span>
				</div>
			</div>
		</div>
<!-- 검색 부분 끝 -->
<!-- 리스트 시작  -->
		<div class="admin_lst">
			<span class="admin_lst01"><a href="#" id="nameDesc">이름순(내림)</a> | <a href="#" id="nameAsc">이름순(올림)</a> | <a href="#" id="inputdayDesc">가입일순(내림)</a> | <a href="#" id="inputdayAsc">가입일순(올림)</a>    
				<select name="nPageSize" class="admin_select_lst">					
					<option value="10"  selected="selected" >10개</option>
					<option value="25"  selected="selected" >25개</option>
					<option value="50"  selected="selected" >50개</option>
					<option value="75"  selected="selected" >75개</option>
					<option value="100"  selected="selected" >100개</option>
				</select>
			</span>
		</div>
		<table style="width:780px" class="mainTbl" id="mainNotice">
			<thead>
				<tr>
					<th class="th_center">회원번호</th>
					<th class="th_center">ID/PASS</th>
					<th class="th_center">성명</th>
					<th class="th_center">회원구분</th>
					<th class="th_center">휴대폰</th>
					<th class="th_center">회원주소</th>
					<th class="th_center">E_mail</th>
					<th class="th_center">가입일자</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="td_cen">
					<a href="view.asp"></a>회원번호
					</td>
					<td class="td_cen">ID/PASS</td>
					<td class="td_cen">성명</td>
					<td class="td_cen">개인회원 </td>
					<td class="td_cen" style="white-space:nowrap">휴대폰<br></td>
					<td class="td_cen">상세주소</td>
					<td class="td_cen">E_mail</td>
					<td class="td_cen">가입일자</td>
				</tr>			
			</tbody>
		</table>
		<div class="admin_list">
		<span><a href="">이전10개</a></span>  
		<span><a href="">이전</a></span>  
		<span><a href="">다음</a></span>  
		<span><a href="">다음10개</a></span>  
		</div>
<!-- 리스트 끝  -->	
	</div>
</div>

    