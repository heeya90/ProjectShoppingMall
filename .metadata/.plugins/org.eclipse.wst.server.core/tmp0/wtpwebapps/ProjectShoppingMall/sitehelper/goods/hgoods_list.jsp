<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>�����ڸ��(��ǰ����)</title>
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
		��з�(selectBox)
		�Һз�(selectBox)
	</div>
	
	<table width="100%">
		<tr>
			<td>��ǰ�ڵ�</td>
			<td>��ǰ�̹��� </td>
			<td>��ǰ�� </td>
			<td>�ǸŰ� </td>
			<td>�Ǹż��� </td>
			<td>�����</td>
			<td></td>
		</tr>
		<tr>
			<td>��ǰ�ڵ�</td>
			<td>��ǰ�̹��� </td>
			<td>��ǰ�� </td>
			<td>�ǸŰ� </td>
			<td>�Ǹż��� </td>
			<td>�����</td>
			<td>
				<input type="button" value="����"></td>
		</tr>
	</table>
	
	<div>
		<select name=operator size=1>
				<option value="code" selected>��ǰ�ڵ�</option>
				<option value="name">��ǰ��</option>
		</select>
		<input type="text" name="">
		<input type="button" value="�˻�">
		<input type="button" value="����ǰ���">
	</div>

</form>
