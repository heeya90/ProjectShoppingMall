<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript" src="user/js/user_reg2p.js"></script>
<%String id=(String)session.getAttribute("user");
	boolean login = id == null? false:true; %>
<!--content -->
<div id="content">
	<div class="sub_con">
		<!--content ������ġ -->
		<div class="sub_loca">
			<img src="./img/icon_home.gif" alt="������ġ" />Ȩ > ȸ������
		</div>
		<!--content Ÿ��Ʋ -->
		<div class="sub_v_tt">
			<h2>ȸ������</h2>
		</div>
		<!--//content Ÿ��Ʋ -->
		<!--content ȸ�������Է� -->
		<form action="UserSuccess.do" method="post" name="frm">
		<div class="join01_tt">
			<span class="join01_tt01"><img src="./img/join02_timg.gif" alt="�����Է�" /></span> 
			<span class="join01_tt02"><img src="./img/join01_txt.gif" alt="ȸ�������� �����̸�,ȸ������� �� �а� �����Ͻñ� �ٶ��ϴ�." /></span>
		</div>
		<div class="join01_con">
			<div class="join02_sctt">
				<span class="join02_stt01"><img	src="./img/join02_stt01.gif" alt="���������Է�" /></span> 
				<span class="join02_stt02"><b>*</b> �� �ʼ� �����Է� �׸��Դϴ�.</span>
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
						<td class="join02_right"><input class="join02_id" id="id" name="userid" type="text" value="" /><span>
								<!--a href="#"><img src="../images/member/btn_idok.gif" alt="���̵��ߺ�Ȯ��" /></a-->
								4~10���� ������ ������ ���� <em>* ȸ�����̵�� ���� �� �����Ͻ� �� ������ �����ϰ� �����Ͻʽÿ�.</em>
						</span></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> ��й�ȣ</th>
						<td class="join02_right">
							<input class="join02_pw" id="pw" name="pwd1" type="password" />
						</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> ��й�ȣȮ��</th>
						<td class="join02_right">
							<input class="join02_pw" id="rpw" name="pwd2" type="password" />
						</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> �̸�</th>	
						<td class="join02_right">
							<input class="join02_id" id="name" name="username" type="text" />
						</td>
					</tr>
					<!-- <tr class="join02_tr">
						<th class="join02_left02">�ֹε�Ϲ�ȣ</th>
						<td class="join02_right"><input class="join02_ssnum"
							name="jumin1" type="text" /> - <input class="join02_ssnum"
							name="jumin2" type="text" /></td>
					</tr> -->
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> ��ȭ��ȣ</th>
						<td class="join02_right"><select class="join02_num_sel"	name="phone1">
								<option value="">����</option>
								<option value='02'>02</option>
								<option value='031'>031</option>
								<option value='032'>032</option>
								<option value='033'>033</option>
								<option value='041'>041</option>
								<option value='042'>042</option>
								<option value='043'>043</option>
								<option value='051'>051</option>
								<option value='052'>052</option>
								<option value='053'>053</option>
								<option value='054'>054</option>
								<option value='055'>055</option>
								<option value='061'>061</option>
								<option value='062'>062</option>
								<option value='063'>063</option>
								<option value='064'>064</option>
								<option value='010'>010</option>
								<option value='011'>011</option>
								<option value='016'>016</option>
								<option value='017'>017</option>
								<option value='018'>018</option>
								<option value='019'>019</option>
								<option value='0130'>0130</option>
								<option value='080'>080</option>
								<option value='070'>070</option>
								<option value='0502'>0502</option>
								<option value='0504'>0504</option>
								<option value='0505'>0505</option>
								<option value='0506'>0506</option>
								<option value='0303'>0303</option>
						</select> - <input class="join02_num01" name="phone2" type="text" /> - <input
							class="join02_num02" name="phone3" type="text" /></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">�޴�����ȣ</th>
						<td class="join02_right"><select class="join02_num_sel"
							name="mobile1">
								<option value="">����</option>
								<option value='010'>010</option>
								<option value='011'>011</option>
								<option value='016'>016</option>
								<option value='017'>017</option>
								<option value='018'>018</option>
								<option value='019'>019</option>
								<option value='0130'>0130</option>
						</select> - <input class="join02_num01" name="mobile2" type="text" /> -
							<input class="join02_num02" name="mobile3" type="text" /></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> �̸���</th>
						<td class="join02_right"><input class="join02_mail"	id="email" name="email" type="text" />
						 <em>* �̺�Ʈ, ���, Ư���Ǹ� �� �پ��� ������ ���� ������ �޾ƺ��ðڽ��ϱ�? 
						 	<label><input type="radio" class="join02_radio" name="emailRecive" value="Y" checked="checked">��</label> 
							<label><input type="radio" class="join02_radio" name="emailRecive" value="N" />�ƴϿ�</label>
						</em></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> �ּ�</th>
						<td class="join02_right">
							<span id="zip1" style="display: none;">zipcode</span> 
							<span id="zip2"	style="display: none;">juso1</span> 
							<input class="join02_add01"	name="zipcode" id="zipcode" type="text" />
							<a href="#"><img src="./img/btn_address.gif" alt="�����ȣã��"	id="zipcode_popup" /></a> 
							<input class="join02_add02" name="juso1" id="juso1" type="text" /> 
							<input class="join02_add02"	name="juso2" type="text" /> ������ �ּҸ� �Է��ϼ���. 
							<em>* �ּ�(�⺻�����)�� �����Ͻ� ��ǰ�̳� �̺�Ʈ ��ǰ ���� ��۽� ���ǹǷ� ��Ȯ�ϰ� �Է��� �ּ���.</em>
						</td>
					</tr>
					<!-- <tr class="join02_tr">
						<th class="join02_left02">�Ҽ�ȸ���</th>
						<td class="join02_right"><input class="join02_id"
							name="company" type="text" /></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">���μ�/����</th>
						<td class="join02_right"><input class="join02_id" name="part"
							type="text" /></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">����</th>
						<td class="join02_right"><input class="join02_id"
							name="position" type="text" /></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">ȸ����ȭ��ȣ</th>
						<td class="join02_right"><select class="join02_num_sel"
							name="com_phone1">
								<option value="">����</option>
								<option value='02'>02</option>
								<option value='031'>031</option>
								<option value='032'>032</option>
								<option value='033'>033</option>
								<option value='041'>041</option>
								<option value='042'>042</option>
								<option value='043'>043</option>
								<option value='051'>051</option>
								<option value='052'>052</option>
								<option value='053'>053</option>
								<option value='054'>054</option>
								<option value='055'>055</option>
								<option value='061'>061</option>
								<option value='062'>062</option>
								<option value='063'>063</option>
								<option value='064'>064</option>
								<option value='010'>010</option>
								<option value='011'>011</option>
								<option value='016'>016</option>
								<option value='017'>017</option>
								<option value='018'>018</option>
								<option value='019'>019</option>
								<option value='0130'>0130</option>
								<option value='080'>080</option>
								<option value='070'>070</option>
								<option value='0502'>0502</option>
								<option value='0504'>0504</option>
								<option value='0505'>0505</option>
								<option value='0506'>0506</option>
								<option value='0303'>0303</option>
						</select> - <input class="join02_num01" name="com_phone2" type="text" />
							- <input class="join02_num02" name="com_phone3" type="text" />
						</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">ȸ���ѽ���ȣ</th>
						<td class="join02_right"><select class="join02_num_sel"
							name="fax1">
								<option value="">����</option>
								<option value='02'>02</option>
								<option value='031'>031</option>
								<option value='032'>032</option>
								<option value='033'>033</option>
								<option value='041'>041</option>
								<option value='042'>042</option>
								<option value='043'>043</option>
								<option value='051'>051</option>
								<option value='052'>052</option>
								<option value='053'>053</option>
								<option value='054'>054</option>
								<option value='055'>055</option>
								<option value='061'>061</option>
								<option value='062'>062</option>
								<option value='063'>063</option>
								<option value='064'>064</option>
								<option value='010'>010</option>
								<option value='011'>011</option>
								<option value='016'>016</option>
								<option value='017'>017</option>
								<option value='018'>018</option>
								<option value='019'>019</option>
								<option value='0130'>0130</option>
								<option value='080'>080</option>
								<option value='070'>070</option>
								<option value='0502'>0502</option>
								<option value='0504'>0504</option>
								<option value='0505'>0505</option>
								<option value='0506'>0506</option>
								<option value='0303'>0303</option>
						</select> - <input class="join02_num01" name="fax2" type="text" /> - <input
							class="join02_num02" name="fax3" type="text" /></td>
					</tr> 
					<tr class="join02_tr">
						<th class="join02_left02">��õ��</th>
						<td class="join02_right"><input class="join02_id"
							name="recom_id" type="text" /></td>
					</tr> -->
				</table>
			</div>
		</div>
		</form>
		<div class="join01_btn">
			<span class="join01_btn01" id="button"><a href="#">
				<img src="./img/join02_btn_join.gif" alt="����" style="margin-bottom:50px"/></a>
			</span>
		</div>
	</div>
	<!--//content ȸ�������Է� -->
</div>
<!--//content -->
