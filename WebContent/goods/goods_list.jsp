<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="sub_loca">
	<img src="./img/icon_home.gif" alt="현재위치" />
	<span id="navigation">홈 &gt; <b>상품리스트</b></span>
</div>

<div class="jw_div_right" id="goodslist">
	<input type="button" class="clickbutton" value="신상품" />
	<input type="button" class="clickbutton" value="이름" />
	<input type="button" class="clickbutton" value="높은가격" />
	<input type="button" class="clickbutton" value="낮은가격" />
	<input type="button" class="clickbutton" value="판매량" />
</div>

<table class="jw_normal_table" style="width: 100%">
	<thead>
		<tr>
			<th class="jw_theader">관리자 추천 상품</th>
		</tr>
		<tr>
			<th class="jw_theader">상품이미지</th>
			<th class="jw_theader">상품코드</th>
			<th class="jw_theader">상품명</th>
			<th class="jw_theader">상품가격</th>
			<th class="jw_theader">제조사/원산지</th>
			<th class="jw_theader">원산지</th>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<table class="jw_normal_table" style="width: 100%">
	<thead>
		<tr>
			<th class="jw_theader">판매 인기상품</th>
		</tr>
		<tr>
			<th class="jw_theader">상품이미지</th>
			<th class="jw_theader">상품코드</th>
			<th class="jw_theader">상품명</th>
			<th class="jw_theader">상품가격</th>
			<th class="jw_theader">제조사</th>
			<th class="jw_theader">원산지</th>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
				<%=request.getAttribute("category2")%>