<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>관리자모드(상품입력)</title>
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
}
</style>

<form action="command/helper/GoodsInsert.jsp" method="post">
	<div>
		<label>대분류</label>
		<input type="text" name="">
		<label>소분류</label>
		<input type="text" name="">
	</div>
	
	<table width="100%">
		<tr>
			<td width="30%">번호:</td>
			<td><input type="text" name="no"></td>
		</tr>
		<tr>
			<td>상품코드:</td>
			<td><input type="text" name="code"></td>
		</tr>
		<tr>
			<td>상품명:</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>가격:</td>
			<td><input type="text" name="price"></td>
		</tr>
		<tr>
			<td>원가:</td>
			<td><input type="text" name="prime"></td>
		</tr>
		<tr>
			<td>제조사:</td>
			<td><input type="text" name="company"></td>
		</tr>
		<tr>
			<td>원산지:</td>
			<td><input type="text" name="region"></td>
		</tr>
		<tr>
			<td>상품정보:</td>
			<td><input type="text" name="content"></td>
		</tr>
		<tr>
			<td>추천상품여부:</td>
			<td><input type="checkbox" name="recommand"></td>
		</tr>
		<tr>
			<td>인기상품여부:</td>
			<td><input type="checkbox" name="best"></td>
		</tr>
		<tr>
			<td>판매량:</td>
			<td><input type="text" name="sales"></td>
		</tr>
		<tr>
			<td>재고:</td>
			<td><input type="text" name="inventory"></td>
		</tr>
		<tr>
			<td>조회수:</td>
			<td><input type="text" name="readcnt"></td>
		</tr>
		<tr>
			<td>수정일:</td>
			<td><input type="text" name="redate"></td>
		</tr>
		<tr>
			<td>입력일:</td>
			<td><input type="text" name="inputdate"></td>
		</tr>
		<tr>
			<td>활성화여부:</td>
			<td><input type="checkbox" name="use"></td>
		</tr>
		<tr>
			<td>
				<input type="button" value="등록">
				<input type="button" value="수정">
			</td>
		</tr>
	</table>
</form>