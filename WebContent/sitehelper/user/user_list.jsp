<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<title>�����ڸ��(����� ����Ʈ)</title>

<div id="sub_contents">
	<div id="content">
		<div class="admin_loca">HOME - ȸ������ - <b>ȸ������Ʈ</b></div>
		<div class="admin_title">ȸ������Ʈ</div>
		<div class="admin_total">ȸ���� : <b></b>��</div>
<!-- �˻� �κ� ���� -->
		<div class="admin_tsearch">
			<div class="admin_tss00">
				<div class="admin_tss">
					<span class="admin_tss_01">
						<select name="syear" class="admin_select_year">
							<option value="" selected="selected">��</option>
						</select>
						<select name="smonth" class="admin_select_month">
							<option value=""selected="selected">��</option>
							</select>
						<select name="sday" class="admin_select_day">
							<option value="" selected="selected">��</option>
							</select> ~ 
						<select name="eyear" class="admin_select_year">
							<option value="" selected="selected">��</option>
							</select>
				
						<select name="emonth" class="admin_select_month">
							<option value="" selected="selected">��</option>
							</select>
						<select name="eday" class="admin_select_day">
							<option value="" selected="selected">��</option>
							</select>
						<select name="shop" class="admin_select_site" disabled>
							<option value="" selected="selected">��ü����Ʈ</option>
							<option value="" selected="selected"></option>
						</select>
					</span>
					<span class="admin_tss_02">
						<select name="status" class="admin_select_mem">
							<option value="Y" selected="selected" >Ż��ȸ������</option>
							<option value="N" selected="selected" >Ż��ȸ������</option>			
						</select>
						<select name="sType" class="admin_select_sel">
							<option value="name" selected="selected">�̸�</option>
							<option value="userid" selected="selected">���̵�</option>			
							<option value="juso" selected="selected">�ּ�</option>			
						</select>
						<input type="text" name="sKey" class="input_box_sel" />
					</span>
				</div>
				<div class="admin_tss_bt">
					<span class="admin_tss_btn"><a href="#" id="memSearchGo"><img src=".
					/img/admin_btn_search.gif" alt="�˻�" /></a></span>
				</div>
			</div>
		</div>
<!-- �˻� �κ� �� -->
<!-- ����Ʈ ����  -->
		<div class="admin_lst">
			<span class="admin_lst01"><a href="#" id="nameDesc">�̸���(����)</a> | <a href="#" id="nameAsc">�̸���(�ø�)</a> | <a href="#" id="inputdayDesc">�����ϼ�(����)</a> | <a href="#" id="inputdayAsc">�����ϼ�(�ø�)</a>    
				<select name="nPageSize" class="admin_select_lst">					
					<option value="10"  selected="selected" >10��</option>
					<option value="25"  selected="selected" >25��</option>
					<option value="50"  selected="selected" >50��</option>
					<option value="75"  selected="selected" >75��</option>
					<option value="100"  selected="selected" >100��</option>
				</select>
			</span>
		</div>
		<table style="width:780px" class="mainTbl" id="mainNotice">
			<thead>
				<tr>
					<th class="th_center">ȸ����ȣ</th>
					<th class="th_center">ID/PASS</th>
					<th class="th_center">����</th>
					<th class="th_center">ȸ������</th>
					<th class="th_center">�޴���</th>
					<th class="th_center">ȸ���ּ�</th>
					<th class="th_center">E_mail</th>
					<th class="th_center">��������</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="td_cen">
					<a href="view.asp"></a>ȸ����ȣ
					</td>
					<td class="td_cen">ID/PASS</td>
					<td class="td_cen">����</td>
					<td class="td_cen">����ȸ�� </td>
					<td class="td_cen" style="white-space:nowrap">�޴���<br></td>
					<td class="td_cen">���ּ�</td>
					<td class="td_cen">E_mail</td>
					<td class="td_cen">��������</td>
				</tr>			
			</tbody>
		</table>
		<div class="admin_list">
		<span><a href="">����10��</a></span>  
		<span><a href="">����</a></span>  
		<span><a href="">����</a></span>  
		<span><a href="">����10��</a></span>  
		</div>
<!-- ����Ʈ ��  -->	
	</div>
</div>

    