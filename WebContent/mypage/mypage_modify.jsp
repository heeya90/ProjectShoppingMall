<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script type="text/javascript" src="./common/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript" src="mypage/js/mypage_modify.js"></script>
<style type="text/css">
.tab{
	border:1px solid black; 
	margin-top:50px; 
	padding:10px; 
}
.lbl_title{
	font-size:large;
	font-weight:bold;
}
</style>
<form action="InformUpdate.do" method="post" name="frm">
<div class="sub_loca"><img src="./img/icon_home.gif" alt="������ġ" />Ȩ > ���������� > �������� ����</div>
<span class="reg_star"><b>*</b> �� �ʼ� �����Է� �׸��Դϴ�.</span>
	<div class="join02_form01">
	<table width="70%" class="join02_form02">
		<tr>
			<td colspan="2">
				<label class="lbl_title">ȸ������ ����</label></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label><b>*</b>�̸�</label></td>
			<td class="join02_right">
				<label><input type="text" name="name" id="name"></label></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label>���̵�</label></td>
			<td class="join02_right">
				<label>${user}</label></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label><b>*</b>��й�ȣ</label></td>
			<td class="join02_right">
				<input type="password" name="pw" id="pw">
		</tr>
		<tr>
			<td class="join02_left01">	
				<label><b>*</b>��й�ȣ Ȯ��</label></td>
			<td class="join02_right">
				<input type="password" name="rpw" id="rpw"></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label><b>*</b>��ȭ��ȣ</label></td>
			<td class="join02_right">
				<input type="text" name="tel" id="tel"></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label>�޴���ȭ</label></td>
			<td class="join02_right">
				<input type="text" name="cell" id="cell"></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label><b>*</b>�����ȣ</label></td>
			<td class="join02_right">
				<input type="text" name="zipcode" id="zipcode" size="7"></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label><b>*</b>�ּ�</label></td>
			<td class="join02_right">
				<INPUT type="text" name="addr" id="addr" size="25"> <br/>
				<INPUT type="text" name="detailaddr" id="detailaddr" size="50"></td>
		</tr>
		<tr>
			<td class="join02_left01">
				<label><b>*</b>�̸���</label></td>
			<td class="join02_right">
				<input type="text" name="email" id="email"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="�����Ϸ�" id="button">
				<input type="reset"  value="�������"></td>
		</tr>
		
	</table>
	</div>
</form>