<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript" src="user/js/user_success.js"></script>
<%
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd1");
	String name = request.getParameter("username");
	String tel = request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3");
	String cell = request.getParameter("mobile1")+"-"+request.getParameter("mobile2")+"-"+request.getParameter("mobile3");
	String email = request.getParameter("email");
	String zipcode = request.getParameter("zipcode");
	String addr = request.getParameter("juso1");
	String detailaddr = request.getParameter("juso2");
%>
<!--content -->
<div id="content">
	<div class="sub_con">
		<!--content ������ġ -->
		<div class="sub_loca">
			<img src="./img/icon_home.gif" alt="������ġ" />Ȩ - ȸ������
		</div>
		<!--content Ÿ��Ʋ -->
		<div class="sub_v_tt">
			<h2>ȸ������</h2>
		</div>
		<!--//content Ÿ��Ʋ -->
		<!--content ȸ�������Է� -->
		<div class="join03_tt">
			<span class="join03_tt01"><img src="./img/join03_timg.gif" alt="���ԿϷ�" /></span> 
			<span class="join03_tt02"><img src="./img/join01_txt.gif" alt="PshoppingMall ȸ���� �ǽŰ��� �������� ���ϵ帳�ϴ�." /></span>
		</div>
		<div class="join01_con">
			<div class="join02_sctt">
				<span class="join02_stt01"><img	src="./img/join03_stt01.gif" alt="���������Է�" /></span> 
				<span class="join02_stt02">������ �Է��Ͻ� ȸ�������Դϴ�.</span>
			</div>
			<div class="join02_form01">
				<table border="1" cellspacing="0" cellpadding="0"
					class="join02_form02">
					<colgroup>
						<col width="117px">
						<col width="">
					</colgroup>
					<tr class="join02_tr" class="join02_tr">
						<th class="join02_left01"><b>*</b> ���̵�</th>
						<td class="join03_right"><%=id%> <em>* ���̵�� �����Ͻ� �� �����ϴ�.</em>
						</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> ��й�ȣ</th>
						<td class="join03_right"><%=pw%></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> �̸�</th>
						<td class="join03_right"><%=name%></td>
					</tr>
<!-- 					<tr class="join02_tr">
						<th class="join02_left02">�ֹε�Ϲ�ȣ</th>
						<td class="join03_right">785555 - 2******</td>
					</tr> -->
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> ��ȭ��ȣ</th>
						<td class="join03_right"><%=tel%></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">�޴�����ȣ</th>
						<td class="join03_right"><%=cell%></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">�̸���</th>
						<td class="join03_right"><%=email%>
							<em>* �̺�Ʈ,	���, Ư���Ǹ� �� �پ��� ������ ���� ���ϸ� 
								<input type="radio"	class="join02_radio" checked>��
							</em>
						</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> �ּ�</th>
						<td class="join03_right"><%=zipcode%> <%=addr%> <%=detailaddr%></td>
					</tr>
<!-- 					<tr class="join02_tr">
						<th class="join02_left02">�Ҽ�ȸ���</th>
						<td class="join03_right">�Ǽ���</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">���μ�/����</th>
						<td class="join03_right">�������� / ����</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">����</th>
						<td class="join03_right">�븮</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">ȸ����ȭ��ȣ</th>
						<td class="join03_right">02 - 123 - 4567</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">ȸ���ѽ���ȣ</th>
						<td class="join03_right">02 - 123 - 4567</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">��õ��</th>
						<td class="join03_right">scars78</td>
					</tr> -->
				</table>
			</div>
		</div>
		<div class="join01_btn">
			<span class="join01_btn01"><a href="#"><img	src="./img/join03_btn_ok.gif" alt="Ȯ��" style="margin-bottom:50px"/></a></span>
		</div>
	</div>
	<!--//content ȸ�������Է� -->
</div>
<!--//content -->
