<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style type="text/css">
div{
	border:1px solid blue;
	margin:3px;
}
td{
	border:1px solid red;
	vertical-align: middle;
	text-align:center;
}
table{
	border:1px solid black; 
	margin-top:50px; 
	padding:10px; 
}
.lbl_title{
	font-size:large;
	font-weight:bold;
}
</style>
	<table align="center" width="70%">
		<tr>
			<td colspan="2">
				<label class="lbl_title">ȸ������ ����</label></td>
		</tr>
		<tr>
			<td>
				<label>�̸�</label></td>
			<td>
				<label><input type="text" name="name" value=""></label></td>
		</tr>
		<tr>
			<td>
				<label>���̵�</label></td>
			<td>
				<label>���̵���</label></td>
		</tr>
		<tr>
			<td>
				<label>��й�ȣ</label></td>
			<td>
				<input type="password" name="pw">
		</tr>
		<tr>
			<td>		
				<label> ��й�ȣ Ȯ��</label></td>
			<td>
				<input type="password" name="rpw"></td>
		</tr>
		<tr>
			<td>
				<label>��ȭ��ȣ</label></td>
			<td>
				<input type="text" name="tel" value=""></td>
		</tr>
		<tr>
			<td>
				<label>�޴���ȭ</label></td>
			<td>
				<input type="text" name="cell" value=""></td>
		</tr>
		<tr>
			<td>
				<label>�����ȣ</label></td>
			<td>
				<input type="text" name="zipcode" size="7"></td>
		</tr>
		<tr>
			<td>
				<label>�ּ�</label></td>
			<td>
				<INPUT type="text" name="addr" size="25"> <br/>
				<INPUT type="text" name="detailaddr" size="50"></td>
		</tr>
		<tr>
			<td>
				<label>�̸���</label></td>
			<td>
				<input type="text" name="email" value=""></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="�����Ϸ�">
				<input type="reset"  value="�������"></td>
		</tr>
		
	</table>