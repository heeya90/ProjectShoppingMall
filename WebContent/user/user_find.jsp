<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript" src="./common/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript" src="user/js/user_findid.js"></script>
<style type="text/css">
.tab {
	border: 1px solid black;
	padding: 10px;
}
.idpw{position: relative; float: left;}
</style>
<div id="find_main">
	<div class="sub_loca">
		<img src="./img/icon_home.gif" alt="������ġ" />Ȩ > ���̵�/��й�ȣ ã��
	</div>

<div>
<table id="idpw" border="1">
	<tr>
		<td>���̵�</td><td><input type="text" name="id" id="id"></td>
	</tr>
	<tr>
		<td>�̸�</td><td><input type="text" name="name" id="name"></td>
	</tr>
	<tr>
		<td>�̸���</td><td><input type="text" name="email" id="email"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="button" value="ID/PW ã��" id="idpwBtn" class="idpwBtn"></td>
	</tr>
</table>
</div>
		
		<table style="width:350px" class="mainTbl" id="mainNotice">
			<thead>
				<tr>
					<th class="th_center">ID/PW</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	
	<div class="pop01_scon">

		<div class="pop01_sscon">

			<span class="pop01_txt"><img src="./img/dot_arrow.gif" alt="" />ȸ�����Խ�
				�ۼ��� �̸��� �̸����ּҸ� <span class="pop01_indent">�Է����ֽñ� �ٶ��ϴ�.</span></span>

		</div>

	</div>
</div>