<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>�����ڸ��(��ǰ�Է�)</title>
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
		<label>��з�</label>
		<input type="text" name="">
		<label>�Һз�</label>
		<input type="text" name="">
	</div>
	
	<table width="100%">
		<tr>
			<td width="30%">��ȣ:</td>
			<td><input type="text" name="no"></td>
		</tr>
		<tr>
			<td>��ǰ�ڵ�:</td>
			<td><input type="text" name="code"></td>
		</tr>
		<tr>
			<td>��ǰ��:</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>����:</td>
			<td><input type="text" name="price"></td>
		</tr>
		<tr>
			<td>����:</td>
			<td><input type="text" name="prime"></td>
		</tr>
		<tr>
			<td>������:</td>
			<td><input type="text" name="company"></td>
		</tr>
		<tr>
			<td>������:</td>
			<td><input type="text" name="region"></td>
		</tr>
		<tr>
			<td>��ǰ����:</td>
			<td><input type="text" name="content"></td>
		</tr>
		<tr>
			<td>��õ��ǰ����:</td>
			<td><input type="checkbox" name="recommand"></td>
		</tr>
		<tr>
			<td>�α��ǰ����:</td>
			<td><input type="checkbox" name="best"></td>
		</tr>
		<tr>
			<td>�Ǹŷ�:</td>
			<td><input type="text" name="sales"></td>
		</tr>
		<tr>
			<td>���:</td>
			<td><input type="text" name="inventory"></td>
		</tr>
		<tr>
			<td>��ȸ��:</td>
			<td><input type="text" name="readcnt"></td>
		</tr>
		<tr>
			<td>������:</td>
			<td><input type="text" name="redate"></td>
		</tr>
		<tr>
			<td>�Է���:</td>
			<td><input type="text" name="inputdate"></td>
		</tr>
		<tr>
			<td>Ȱ��ȭ����:</td>
			<td><input type="checkbox" name="use"></td>
		</tr>
		<tr>
			<td>
				<input type="button" value="���">
				<input type="button" value="����">
			</td>
		</tr>
	</table>
</form>