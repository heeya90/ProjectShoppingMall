<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>관리자모드(상품관리)</title>
<style type="text/css">
div{
	text-align: center;
	line-height:30px;
	border:1px solid blue;
	padding:5px;
	margin:5px;
	padding-top:50px
}
td{
	border:1px solid red;
	text-align:center;
	vertical-align: middle;
}
</style>

<form action="command/helper/GoodsInsert.jsp" method="post">
	<div>
		대분류(selectBox)
		소분류(selectBox)
	</div>
	
	<table width="100%">
		<tr>
			<td>상품코드</td>
			<td>상품이미지 </td>
			<td>상품명 </td>
			<td>판매가 </td>
			<td>판매수량 </td>
			<td>등록일</td>
			<td></td>
		</tr>
		<tr>
			<td>상품코드</td>
			<td>상품이미지 </td>
			<td>상품명 </td>
			<td>판매가 </td>
			<td>판매수량 </td>
			<td>등록일</td>
			<td>
				<input type="button" value="삭제"></td>
		</tr>
	</table>
	
	<div>
		<select name=operator size=1>
				<option value="code" selected>상품코드</option>
				<option value="name">상품명</option>
		</select>
		<input type="text" name="">
		<input type="button" value="검색">
		<input type="button" value="새상품등록">
	</div>

</form>
