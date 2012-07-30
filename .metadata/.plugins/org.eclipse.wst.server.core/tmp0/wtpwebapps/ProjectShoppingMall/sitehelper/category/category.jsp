<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>관리자모드(카테고리)</title>

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
}
</style>

<form action="command/helper/Category.jsp" method="post">
	<div>
		<table align="center" >
			<tr>
				<td width="40%">
					<textarea name="category_lev1" style="width:100%; height:200px"></textarea>
				</td>
				<td width="10%">
					<input type="button" value="제일위"><br/>
					<input type="button" value="바로위"><br/>
					<input type="button" value="바로아래"><br/>
					<input type="button" value="제일아래">
				</td>
				<td width="40%">
					<textarea name="category_lev1" style="width:100%; height: 200px;"></textarea>
				</td>
				<td width="10%">
					<input type="button" value="제일위"><br/>
					<input type="button" value="바로위"><br/>
					<input type="button" value="바로아래"><br/>
					<input type="button" value="제일아래">
				</td>
			</tr>
			
			<tr>
				<td>
					<input type="text" name="category_lev1"></td>
				<td> </td>
				<td>
					<input type="text" name="category_lev2"></td>
			</tr>
			
			<tr>
				<td>
					<input type="button" value="등록">
					<input type="button" value="수정">
					<input type="button" value="삭제">
				</td>
				<td></td>
				<td>
					<input type="button" value="등록">
					<input type="button" value="수정">
					<input type="button" value="삭제">
				</td>
			</tr>
		</table>
	</div>
</form>
