<%@ page contentType="text/html; charset=euc-kr"%>
<html>
<head>
<title></title>
<link href="../css/style_list.css" rel="stylesheet" type="text/css" />

</head>
<body class="body">
	<div id="wrap00">

<div id="left00">
<div id="left">
	<div class="left_timg">
		<a href="http://www.giftmani.com" target="_blank"><img src="../images/admin_list_lt.gif" alt="�����ڸ���" /></a>
</div>
	
	<div class="left_tmenu">�Խ��ǰ���
	</div>

	<div class="left2">

	<ul class="left_mu_ul">
		<li class="left_mu_li">�Խ���</li>
			<ul class="mu_ul">
				<li class="mu_li"><a href="notice.asp?tblName=inner">���ΰ�������</a></li>
				<li class="mu_li"><a href="notice.asp?tblName=outer">��������</a></li>
			</ul>



		<li class="left_mu_li">���Խ��� ����Ʈ</li>
			<ul class="mu_ul">
				<li class="mu_li"><a href="upload_list.asp">���Ͼ��ε� ����Ʈ</a></li>
				<li class="mu_li"><a href="reorder_list.asp">�����ֹ� ����Ʈ</a></li>
				<li class="mu_li"><a href="question_list.asp">��ǰ��Q/A</a></li>
			</ul>


	</ul>
	</div>

</div>

<div id="top00">

<div id="header">

	<div id="menu">


		<div class="top1">
			
			<div class="admin_tleft">
				<select name="sel" class="admin_select">
					<option value="g_name" >��ǰ��+�ڵ�</option>
					<option value="info9" >��ǰ�ڵ�2</option>
					<option value="man" >�����</option>
					<option value="userid" >����� ID</option>
					<option value="com_code" >����ó�ڵ�</option>
					<option value="content" >��ǰ����</option>
				</select>
				<input type="text" name="topSearch" class="input_box" /><a href="#" id="topSearchGo"><img src="../images/admin_btn_tsearch.gif" alt="�˻�" /></a>
			</div>
			
			<div class="admin_tright">
				<span class="admin_tbtn"><a href="../jumun/daejumun.asp"><img src="../images/admin_btn_jumun.gif" alt="�ֹ�����ٷΰ���" /></a></span>
				<span class="admin_ttxt"><b>������</b>���� <b>1,212</b> ��° �湮�Դϴ�.</span>
				<span class="admin_btn_logout"><a href="#" id="logout"><img src="../images/admin_btn_logout.gif" alt="�α׾ƿ�" /></a></span>
			</div>
				
				
		</div>


		<div class="top2">
			<ul class="top2_ul">
				
				<li class="pointer" id="main/index"><a href="#">HOME</a></li>				
				
				<li class="pointer" id="member/list"><a href="#">ȸ������</a></li>
				
				<li class="pointer" id="jumun/jumun_list"><a href="#">�ֹ�����</a></li>
				
				<li class="pointer" id="maechul/maechul_list"><a href="#">�������</a></li>
				
				<li class="pointer" id="product/companyList"><a href="#">��ǰ����</a></li>
				<!--li class="pointer" id="shopData/shopData"><a href="#">B2C SHOP</a></li-->
				<li class="pointer" id="board/notice"><a href="#">�Խ��ǰ���</a></li>
				<li class="pointer" id="shopData/shopData"><a href="#">��������</a></li>
				<!-- <li class="pointer" id="shopData/shopData"><a href="#">���ʰ���</a></li> -->
				<li class="pointer" id="set/shopList"><a href="#">ȯ�漳��</a></li>
				
				<li class="pointer" id="stats/counter"><a href="#">���</a></li>
			</ul>
		</div>


	</div>

<div id="sub_contents">
	<div id="content">
		<div class="admin_loca">HOME > �Խ��ǰ��� > <b>���ΰԽ��� ����Ʈ</b></div>

		<div class="admin_title">���ΰԽ��� ����Ʈ</div>

		<div class="admin_total">
		<div id="list">
			<div class='companyWhere'> ��ϼ� : [21]��</div>
		</div>
		</div>


<!-- �˻� �κ� ���� -->
		<div class="admin_tsearch">
			<div class="admin_tss00">
				<div class="admin_tss_new">

					<span class="admin_tss_01">						
						<input type="hidden" name="tblName" value="inner" />
						<input type="text" name="sKey" class="input_box_txt01" value="" /><a href="#"><img src="../images/admin_btn_msearch.gif" alt="�˻�" id="searchBtn" /></a>
					</span>


				</div>
			</div>
		</div>
<!-- �˻� �κ� �� -->



		<table width="780">
			<thead>
				<tr>
					<th>��ȣ</th>					
					<th>����</th>
					<th>�ۼ���</th>
					<th>��ȸ��</th>
				</tr>
			<thead>
			<tbody>
				
				<tr>
					<td class="td_cen">21</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=22&nPage=1&tblName=inner&shop_code=&sKey=&sType=">���ֿ� ��ǰ���԰�</a></td>
					<td class="td_cen">2012-06-11</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">20</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=21&nPage=1&tblName=inner&shop_code=&sKey=&sType=">�������� ����2�ܿ������ 300�� �ֹ���</a></td>
					<td class="td_cen">2012-05-30</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">19</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=20&nPage=1&tblName=inner&shop_code=&sKey=&sType=">�����ѵ���ȸ �����</a></td>
					<td class="td_cen">2012-05-30</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">18</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=19&nPage=1&tblName=inner&shop_code=&sKey=&sType=">[������ ���ڹ���] ���� �������ü�Ʈ</a></td>
					<td class="td_cen">2012-05-24</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">17</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=18&nPage=1&tblName=inner&shop_code=&sKey=&sType=">���� �̽������� ����</a></td>
					<td class="td_cen">2012-05-17</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">16</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=17&nPage=1&tblName=inner&shop_code=&sKey=&sType=">�����ڸ��� ���ݰ�꼭���� �̸����ּ�</a></td>
					<td class="td_cen">2012-05-10</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">15</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=16&nPage=1&tblName=inner&shop_code=&sKey=&sType=">���뱸���� ��Ƽ���������̽� ���۳���</a></td>
					<td class="td_cen">2012-05-08</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">14</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=15&nPage=1&tblName=inner&shop_code=&sKey=&sType=">��õ�� ������ �ð� 2�����Ű�</a></td>
					<td class="td_cen">2012-05-08</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">13</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=14&nPage=1&tblName=inner&shop_code=&sKey=&sType=">��Ƽ�� �������̽� ���۰�</a></td>
					<td class="td_cen">2012-05-08</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">12</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=13&nPage=1&tblName=inner&shop_code=&sKey=&sType=">���� �����ڵ������� 5000�� </a></td>
					<td class="td_cen">2012-05-07</td>
					<td class="td_cen">0</td>
				</tr>
				
			</tbody>
		</table>
		

		<div class="admin_list">		
		
		<a href="notice.asp?sKey=&sType=&tblName=inner&nPageSize=10&shop_code=&nPage=1">1</a>  | 
		<a href="notice.asp?sKey=&sType=&tblName=inner&nPageSize=10&shop_code=&nPage=2">2</a>  | 
		<a href="notice.asp?sKey=&sType=&tblName=inner&nPageSize=10&shop_code=&nPage=3">3</a> 
		<span><a href="notice.asp?sKey=&sType=&tblName=inner&nPageSize=10&shop_code=&nPage=2">����</a></span>  
		
		</div>


		

		<div class="admin_arr_cen"><input type="button" value="�۾���" onClick="location.href='notice_write.asp?nPage=1&nPageSize=10&sKey=&sType=&shop_code=&tblName=inner'" class="clickbutton08" />
		</div>

	

<div id="footer">
	<span class="footer_copy">
	copyright �� 2010 by atdid All rights reserved
	</span>
</div>

</div>
<iframe src="/doweb/session.asp" frameborder="0" width="0" height="0"></iframe>

	</div>

</div>

</div></div></div>
</body>
</html>