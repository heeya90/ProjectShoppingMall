<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<link href="./common/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="user/js/user_main.js"></script>
<!--content -->
<div id="content">
	<!-- contents -->
	<div id="sub_con" >
		<input type="hidden" name="referer" value="" /><!-- �������������̵��ϱ� -->
		<!--content ������ġ -->
		<div class="sub_loca">
			<img src="./img/icon_home.gif" alt="������ġ" />Ȩ-PShoppingMall MainPage
		</div>
		<h2>
			<img src="./img/best_tt01.gif" alt="MD��õ��ǰ"  style="margin-top:22px;"/>
		</h2>
		<div id="md_choice">
			<!-- md's choice menu -->
			<div class="md_tab">
				<ul id="rollingSwitchTab">
					<li class="firstChild">MD ��õ ��ü ����</li>
					<%=request.getAttribute("category2list")%>
				</ul>
			</div>
			<!-- //md's choice menu -->
			<!-- md's choice #1 -->
			<div class="md_con">
				<div class="md_con_A">
					<div class="my_stt02">
						<table  class="my_stt02_table">
							<thead class="my_stt02_th">
							<tr>
								<th style="width:200">��ǰ�̹���</th>
								<th style="width:100">��ǰ�ڵ�</th>
								<th style="width:150">��ǰ��</th>
								<th style="width:100">�ǸŰ�</th>
								<th style="width:100">������</th>
								<th style="width:100">������</th>
								<th></th>
							</tr>	
							</thead>
							<tbody class="my_stt02_tbl">
								<%=request.getAttribute("goods1")%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- //md's choice #1 -->
		</div>		
			
		<h2>
			<img src="./img/best_tt02.gif" alt="Best �Ǹ� ��ǰ" style="margin-top:10px;"/>
		</h2>
		<div id="md_choice">
			<!-- Best menu -->
			<div class="md_tab">
				<ul id="rollingSwitchTab">
					<li class="firstChild">�α��ǰ ��ü ����</li>
					<%=request.getAttribute("category2list")%>
				</ul>
			</div>
			<!-- //Best menu -->
			<!-- Best choice #1 -->
			<div class="md_con">
				<div class="md_con_A">
					<div class="my_stt02">
						<table  class="my_stt02_table">
							<thead class="my_stt02_th">
							<tr>
								<th style="width:200">��ǰ�̹���</th>
								<th style="width:100">��ǰ�ڵ�</th>
								<th style="width:150">��ǰ��</th>
								<th style="width:100">�ǸŰ�</th>
								<th style="width:100">������</th>
								<th style="width:100">������</th>
								<th></th>
							</tr>	
							</thead>
							<tbody class="my_stt02_tbl">
								<%=request.getAttribute("goods2")%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- //Best choice #1 -->
		</div>
	</div>



	<!-- ������ -->
	<div id="cm_ct">
		<!-- ���� �������� -->
		<div class="sp_ntc">
			<div class="sp_ntt">
				<span class="sp_nt_tt">
					<img src="./img/sp_tt01.gif" alt="���� ��������" />
				</span> 
				<span class="sp_nt_plus">
					<a href="#"><img src="./img/pd_sp_plus.gif" alt="������" /></a>
				</span>
			</div>
			<div class="sp_noti">
				<div class="sp_nt_text">
					<span class="sp_ntdot"><img src="./img/sp_dot.gif" /></span> <span
						class="sp_text"><a href="#">������� �ÿ��� ��������ǰ��õ!!..</a></span>
				</div>
				<div class="sp_nt_text">
					<span class="sp_ntdot"><img src="./img/sp_dot.gif" /></span> <span
						class="sp_text"><a href="#">���� ������ ����ǰ��Ī-[���ö����..</a></span>
				</div>
				<div class="sp_nt_text">
					<span class="sp_ntdot"><img src="./img/sp_dot.gif" /></span> <span
						class="sp_text"><a href="#">[��������ǰ ������] �����߿ܿ�ǰ..</a></span>
				</div>
			</div>
			<div class="sp_cash">
				<span class="sp_cashtt">
					<img src="./img/sp_cashtt.gif" alt="�Աݾȳ�" />
				</span> 
				<span class="sp_cashnum">
					<img src="./img/sp_cashnum.gif" alt="�츮����1055-901-342463/����074-01-185086/��ȯ����144-22-01638-5/������(��)�ܵ��" />
				</span>
			</div>
			<div class="sp_cachtext">�Ա�Ȯ���� 1�ð����� �̷�����ϴ�.</div>
		</div>
		<!--// ���� �������� -->
		<!-- ���� ���̵� -->
		<div class="sp_gid">
			<div class="sp_gtt">
				<span class="sp_gt_tt"><img src="./img/sp_tt02.gif"
					alt="���� ���̵�" /></span>
			</div>
			<div class="sp_gt_text">
				<ul class="sp_txt">
					<li><a href="#"><img src="./img/sp_stt01.gif" alt="����� ����" /></a></li>
					<li><a href="#"><img src="./img/sp_stt02.gif" alt="�����ֹ���û" /></a></li>
				</ul>
				<ul class="sp_txt">
					<li><a href="#"><img src="./img/sp_stt03.gif"
							alt="�̿�ȳ�faq" /></a></li>
					<li><a href="#"><img src="./img/sp_stt04.gif"
							alt="1:1�����" /></a></li>
				</ul>
				<ul class="sp_txt">
					<li><a href="#"><img src="./img/sp_stt05.gif" alt="�μ�þ�Ȯ��" /></a></li>
					<li><a href="#"><img src="./img/sp_stt06.gif"
							alt="���˹������ֹ����̵�" /></a></li>
				</ul>
				<ul class="sp_txt">
					<li><a href="#"><img src="./img/sp_stt07.gif" alt="��ǰ���" /></a></li>
					<li><a href="#"><img src="./img/sp_stt08.gif" alt="������û" /></a></li>
				</ul>
			</div>
			<div class="sp_gt_tt00">
				<div class="sp_gt_text00">
					<span class="sp_txt01"><img src="./img/sp_btt01.gif"
						alt="���ڷ�߼۽ý���" /></span> <span class="sp_txt02"><a href="#">�����̿��ϱ�</a></span>
				</div>
			</div>
		</div>
		<!--// ���� ���̵� -->
		<!-- ���� ������ -->
		<div class="sp_ct">
			<div class="sp_ctt">
				<span class="sp_ct_tt"><img src="./img/sp_tt03.gif"	alt="���� ������" /></span>
			</div>
			<div class="sp_ct_txt">
				<img src="./img/sp_num.gif" alt="��ǥ��ȭ 02-883-6151" />
			</div>
			<div class="sp_ct_txt01">
				<img src="./img/sp_time.gif" alt="�̿�ȳ� ���Ͽ���9��~����7�ñ���(���ɽð� 12��~1��)" />
			</div>
			<div class="sp_ct_txt02">
				<img src="./img/sp_email.gif" alt="��ǥ�̸��� giftmani@empal.com" />
			</div>
		</div>
		<!--// ���� ������ -->
	</div>
	<!--// ������ -->
	<!-- ��� -->
	<div class="f_banner">

		<div class="f_b_law">
			<a href="#"><img src="./img/bnr_larrow.gif" alt="����ȭ��ǥ" /></a>
		</div>
		<div id="point-ranking-container" class="container">
			<div class="bannerimg">
				<ul>
					<li><img src="./img/f_bnr01.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr02.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr03.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr04.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr05.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr06.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr07.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr08.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr09.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr10.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr11.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr12.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr13.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr14.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr15.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr16.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr17.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr18.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr19.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr20.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr21.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr22.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr23.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr24.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr25.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
					<li><img src="./img/f_bnr26.gif" alt="���" /></li>
					<li><img src="./img/bnr_line.gif" alt="��ʶ���" /></li>
				</ul>
			</div>
		</div>
		<div class="f_b_raw">
			<a href="#"><img src="./img/bnr_rarrow.gif" alt="������ȭ��ǥ" /></a>
		</div>
	</div>
	<!--// ��� -->
</div>
<!--//content -->