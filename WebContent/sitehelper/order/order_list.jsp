<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<title>�ֹ���������Ʈ</title>

<div id="sub_contents">

	<div id="content">

		<div class="admin_loca">HOME - �ֹ����� - <b>�ֹ����� ����Ʈ</b></div>
		<div class="admin_title">�ֹ����� ����Ʈ</div>
		<div class="admin_total">�� �ֹ� : <b></b>��</div>

<!-- �˻� �κ� ���� -->
		<div class="admin_tsearch">
			<div class="admin_tss00">
				<div class="admin_tss">

					<span class="admin_tss_01">
						<select name="syear" class="admin_select_year">
							<option value="" selected="selected">��</option>
						</select>
			
						<select name="smonth" class="admin_select_month">
							<option value="" selected="selected">��</option>
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
						<select name="shop_code" class="admin_select_site"  disabled >							
							<option value="" selected="selected">��ü����Ʈ</option>
							<option value="" selected="selected"></option>
								
						</select>
					</span>


					<span class="admin_tss_02">
				
						<select name="status" class="admin_select_mem">
							<option value="" selected="selected" >��ü�ֹ�</option>
							<option value="1"selected="selected" >�Ա�Ȯ����</option>
							<option value="2" selected="selected" >�Ա�Ȯ��</option>
							<option value="3" selected="selected" >����غ�</option>
							<option value="4" selected="selected" >�����</option>
							<option value="5" selected="selected" >��ۿϷ�</option>
							<option value="6" selected="selected" >�ֹ����</option>
						</select>
						<select name="pay_type" class="admin_select_sel">
							<option value="" selected="selected">�������</option>
							<option value="cash" selected="selected">���ݰ���</option>
							<option value="card" selected="selected">ī�����</option>
							<option value="vbank" selected="selected">�������</option>
						</select>
						<select name="sType" class="admin_select_sel">
							<option value="ord_no"  selected="selected" >�ֹ���ȣ</option>
							<option value="sname" selected="selected" >�ֹ��ڸ�</option>
						</select>
						<input type="text" name="sKey" class="input_box_sel01" value="" />
					</span>

				</div>
				<div class="admin_tss_bt">
					<span class="admin_tss_btn"><a href="#"><img src="./sitehelper/img/admin_btn_search.gif" alt="�˻�" /></a></span>
				</div>
			</div>
		</div>
<!-- �˻� �κ� �� -->

<input type="hidden" name="delivery_code" id="deliveryCode" value="" />
		<table style="width:780px" class="mainTbl">
			<thead>
				<tr>
					<th>�ֹ���ȣ<br>�ֹ��ڸ�</th>
					<th class="th_cen200">��ǰ/�ǸŰ�/����<br>�Ǹűݾ�</th>
					<th class="th_cen105">���Ȯ��</th>
					<th class="th_cen75">��ǰ�����</th>
					<th>�����ݾ�<br>�������</th>
					<th>�ֹ��Ͻ�</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="td_cen">
					<a href="#" class="memoLayer">��</a><div class="textLayer" style="line-height:21px;position:absolute;display:none;background:white;margin-left:40px;margin-top:-2px;padding:15px;border:1px solid #e5422c;text-align:left;"></div><br>
					<a href="order_list.jsp"></a>
					<br /><br />
					</td>
					<td class="td_center" colspan="3">
						<table class="admin_table07">
							<tr>
								<td class="tbl01_td01">
									<div class="">
										<div class="adm_t01">
											<span class="adm_s01"><a href=""><img src="" width="50" height="50" /></a></span>
											<span class="adm_s02"><a href="">[]</a><br><a href=""></a></span>
											<span class="adm_s01"><img src="" width="50" height="50" /></span>
											<span class="adm_s02"><br></span>
										</div>
										
										<div class="adm_t02">
											<span class="adm_s01">�ǸŰ�:���� <br></span>
											<span class="adm_s010">
											<a href="stiker_list.asp?sKey="></a>
												</span><br><span class="adm_s02"></span>
											<span class="adm_s03">-=<b>[%]</b></span>
										</div>
										
									</div>
																		
								</td>								
								<td class="tbl03_td02">
									<b></b><br />
									<br />
									<select name="delivery" class="admin_select_opt01">
										<option value="">��۾�ü</option>
										<option value=""  selected="selected"></option>
									</select><span class="delivery_number"><b>��</b></span><div class="de_num"><span class="phone"></span> <span class="x">x</span></div> <br>
									<input name="delivery_number" class="input_box_sel02" value="" /><br />
									<input type="text" class="datepicker" name="delivery_day" value="" readonly="readonly" />
									<input type="button" value="����" class="clickbutton03" name="order_delivery_click" /><input type="hidden" value="" />
								</td>								
								<td class="tbl02_td01">									
									<b></b><br><input type="hidden" name="com_id" value="" />
									<b>�Ϲ�</b><b>���</b><b><span>���</span><span>Ư��</span></b>
								</td>
							</tr>
					</table>

					</td>
					
					<!-- order ���̺� �ִ� ���� �����ݾ�, vat �� �ݾ����� ���� ���-->
					<td class="td_cen"><b></b><!--�ֹ��Ǵ� �����߰�--><br /><span>��<br></span><!--//�ֹ��Ǵ� �����߰�-->ī����� �������Ա� �������<br> 
						<select name="order_status" class="admin_select_mem">							
							<option value="1" selected="selected" >�Ա�Ȯ����</option>
							<option value="2" selected="selected" >�Ա�Ȯ��</option>
							<option value="3" selected="selected" >����غ�</option>
							<option value="4" selected="selected" >�����</option>
							<option value="5" selected="selected" >��ۿϷ�</option>
							<option value="6" selected="selected" >�ֹ����</option>
						</select>
						<br /> 
						<input type="hidden" name="ord_no" value="" />
						<input type="button" value="����" name="order_status_click" class="clickbutton03">
						
					</td>
					<td class="td_cen">
					<br>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="admin_list">
		<span><a href="&nPage=">����10��</a></span>  
		<span><a href="&nPage=">����</a></span>  
		<a href="&nPage="></a> |  
		<span><a href="&nPage=">����</a></span>  
		<span><a href="&nPage=">����10��</a></span>
		</div>
	</div>
</div>
