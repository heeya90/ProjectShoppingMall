<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="model.beans.GoodsBean"%>
<%@ page import="java.util.ArrayList" %> 
<table id="getrecomgoods" style="border:1 solid black" >
	<thead>
		<tr>
			<th class="theader" >관리자 추천 상품</th>
		</tr>
		<tr>
			<th class="theader">상품이미지</th>
			<th class="theader">상품코드</th>
			<th class="theader">상품명</th>
			<th class="theader">상품가격</th>
			<th class="theader">제조사/원산지</th>
			<th class="theader">판매량</th>
		</tr>
	</thead>
	<tbody>
	<%= request.getAttribute("arrgood1s") %>
	</tbody>
</table>
<table id="getbestgoods" >
	<thead>
		<tr>
			<th class="theader">판매 인기상품</th>
		</tr>
		<tr>
			<th class="theader">상품이미지</th>
			<th class="theader">상품코드</th>
			<th class="theader">상품명</th>
			<th class="theader">상품가격</th>
			<th class="theader">제조사/원산지</th>
			<th class="theader">판매량</th>
		</tr>
	</thead>
	<tbody>
	<%= request.getAttribute("arrgood1s") %>
	</tbody>
</table>