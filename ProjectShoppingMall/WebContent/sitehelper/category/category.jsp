<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>�����ڸ��(ī�װ�)</title>

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
					<input type="button" value="������"><br/>
					<input type="button" value="�ٷ���"><br/>
					<input type="button" value="�ٷξƷ�"><br/>
					<input type="button" value="���ϾƷ�">
				</td>
				<td width="40%">
					<textarea name="category_lev1" style="width:100%; height: 200px;"></textarea>
				</td>
				<td width="10%">
					<input type="button" value="������"><br/>
					<input type="button" value="�ٷ���"><br/>
					<input type="button" value="�ٷξƷ�"><br/>
					<input type="button" value="���ϾƷ�">
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
					<input type="button" value="���">
					<input type="button" value="����">
					<input type="button" value="����">
				</td>
				<td></td>
				<td>
					<input type="button" value="���">
					<input type="button" value="����">
					<input type="button" value="����">
				</td>
			</tr>
		</table>
	</div>
</form>
