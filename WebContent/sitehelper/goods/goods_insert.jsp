<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript" src="../common/jquery-1.7.2.js"></script>
<script type="text/javascript" src="goods/js/goods_insert.js"></script>

<title>�����ڸ��(��ǰ���/����)</title>

<div id="content">
<div class="admin_loca">HOME - ��ǰ���� - ��ǰ���/���� - <b>[<span class="productListTitle"></span>]��ǰ</b></div>
<div class="admin_title">[<span class="productListTitle"></span>]��ǰ ���</div>
		
			<form name="frmMove" method="post">
			<input type="hidden" name="sKey" id="sKey" value="" />
			<input type="hidden" name="sType" id="sType" value="" />
			<input type="hidden" name="com_type" id="com_type" value="" />
			<input type="hidden" name="sort" id="sort" value="" />
			<input type="hidden" name="com_category" id="com_category" value="" />
			<input type="hidden" name="com_id" id="com_id" value="" />
			<input type="hidden" name="productKey" id="productKey" value="" />
			<input type="hidden" name="nPage" id="nPage" value="" />
			<input type="hidden" name="pPage" id="pPage" value="" />
			<input type="hidden" name="pKey" id="pKey" value="" />
			<input type="hidden" name="pType" id="pType" value="" />
			<input type="hidden" name="categoryA" id="categoryA" value="" />
			<input type="hidden" name="categoryB" id="categoryB" value="" />
			<input type="hidden" name="categoryC" id="categoryC" value="" />
			<input type="hidden" name="sYear" id="sYear" value="" />
			<input type="hidden" name="sMonth" id="sMonth" value="" />
			<input type="hidden" name="sDay" id="sDay" value="" />
			<input type="hidden" name="eYear" id="eYear" value="" />
			<input type="hidden" name="eMonth" id="eMonth" value="" />
			<input type="hidden" name="eDay" id="eDay" value="" />
			<input type="hidden" name="topSearch" id="topSearch" value="" />
			</form>

<div id="productWriteForm">
	<form name='frm' id='frm' method='post' enctype='multipart/form-data'>
		<input type="hidden" name="com_id" id="com_id" value=">" />
		<table class="boardinput" summary="��ǰ ���" style="width: 780px;">
			<tbody>
				<tr>
					<td class="td_cen" colspan="4"><span class="action">
						<img src="./img/admin_btn_enter.gif"  class="clickbutton" id="submitbutton1" STYLE="type:button; value:�Է�"/>
						<img src="./img/admin_btn_list.gif"  class="clickbutton" id="listbutton1" STYLE="type:button; value:����Ʈ"/> 
						<img src="./img/admin_btn_del.gif"  class="clickbutton" id="deletebutton1" STYLE="type:button; value:����" /> 
						<img src="./img/admin_btn_zero.gif"  class="clickbutton" id="resetbutton1" STYLE="type:button; value:�ʱ�ȭ" /></span></td>
				</tr>
				<tr>
					<th class="th_center">��ǰ��</th>
					<td class="left" colspan="3"><input type="text"	class="input_box_txt" name="p_name" id="p_name" value="�ݹ���" style="width: 400px;" />
					<!-- class="inputbox250" --></td>
				</tr>
				<tr>
					<th class="th_center">��ǰ�ڵ�</th>
					<td class="left"><input type="text" name="p_code" id="p_code" class="input_box_txt" readOnly="readOnly" value="" />
					<!-- class="optionText" --></td>
				</tr>
				<tr>
					<th class="th_center">ī�װ�</th>
					<td class="left" colspan="4">
						<div class="categoryBox01">
							<div class="categoryGubun01">��з�</div>
							<div class="categorySelectBox">
								<select name="categoryA" id="categoryA" class="selectBox" size="10">
									<option value="" selected="selected"></option>
								</select>
							</div>
						</div>
						<div class="categoryBox01">
							<div class="categoryGubun01">�ߺз�</div>
							<div class="categorySelectBox">
								<select name="categoryB" id="categoryB" class="selectBox" size="10">
									<option value="" selected="selected"></option>
								</select>
							</div>
						</div>

					</td>
				</tr>
				<tr>
					<th class="th_center">�˻�Ű����</th>
					<td class="left" colspan="3"><input type="text" name="keyword"
						id="keyword" value="����" class="input_box_txt"/></td>
				</tr>
				<tr>
					<th class="th_center">�ɼ�</th>
					<td class="left" colspan="3">
						<table style="border:0; cellpadding:0; cellspacing:0"
							class="admin_table03">
							<tr>
								<th class="th_center"><input type="text" name="optionText1" id="optionText1" value="color" class="optionText" /></th>
								<th class="th_center"><input type="text" name="optionText2" id="optionText2" value="size" class="optionText" /></th>
								<th class="th_center"><input type="text" name="optionText3"	id="optionText3" value="" class="optionText" /></th>
								<th class="th_center"><input type="text" name="optionText4"	id="optionText4" value="" class="optionText" /></th>
								<!--th class="eeeeBg"><input type="text" name="optionText3" id="optionText3" value="" class="optionText" /></th-->
							</tr>
							<tr>
								<td class="td_cen"><input type="text" name="optionValue1" id="optionValue1" value="yellow" class="inputbox" /></td>
								<td class="td_cen"><input type="text" name="optionValue2" id="optionValue2" value="M" class="inputbox" /></td>
								<td class="td_cen"><input type="text" name="optionValue3" id="optionValue3" value="" class="inputbox" /></td>
								<td class="td_cen"><input type="text" name="optionValue4" id="optionValue4" value="" class="inputbox" /></td>
							</tr>
							<tr>
								<th class="th_center"><input type="text" name="optionText5"	id="optionText5" value="" class="optionText" /></th>
								<th class="th_center"><input type="text" name="optionText6"	id="optionText6" value="" class="optionText" /></th>
								<th class="th_center"><input type="text" name="optionText7"	id="optionText7" value="" class="optionText" /></th>
								<th class="th_center"><input type="text" name="optionText8"	id="optionText8" value="" class="optionText" /></th>
							</tr>
							<tr>
								<td class="td_cen"><input type="text" name="optionValue5" id="optionValue5" value="" class="inputbox" /></td>
								<td class="td_cen"><input type="text" name="optionValue6" id="optionValue6" value="" class="inputbox" /></td>
								<td class="td_cen"><input type="text" name="optionValue7" id="optionValue7" value="" class="inputbox" /></td>
								<td class="td_cen"><input type="text" name="optionValue8" id="optionValue8" value="" class="inputbox" /></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<th class="th_center">��ǰ����</th>
					<td class="left" colspan="3">
						<table style="border:0; cellpadding:0; cellspacing:0" class="admin_table03">
							<tr>
								<th class="th_center">��õ��ǰ</th>
								<th class="th_center">�α��ǰ</th>
							</tr>
							<tr>
								<td class="td_cen">
								<input type="checkbox" name="recommand_product" id="recommand_product" value="Y" checked="checked" /></td>
								<td class="td_cen">
								<input type="checkbox" name="new_product" id="new_product" value="Y" checked="checked" /></td>
							</tr>
						</table>
							</td>
				</tr>
				<tr>
					<th class="th_center">�ǸŻ���</th>
					<td class="left" colspan="3">
						<label><input type="radio" name="useType" value="Y" checked="checked" /> ����</label> 
						<label><input type="radio" name="useType" value="N" /> �̽���</label> 
						<label><input type="radio" name="useType" value="P" /> �Ͻ�ǰ��</label>
					</td>
				</tr>
				<tr>
					<th class="th_center">�ǸŴ���</th>
					<td class="left" colspan="3">
						<select name="sale_unit" id="sale_unit" class="admin_select_site">
							<!-- class="inputbox" -->
							<option value="��" selected="selected" >��</option>
							<option value="SET"	selected="selected" >SET</option>
							<option value="BOX"	selected="selected" >BOX</option>
						</select>
					</td>
				</tr>
				<tr>
					<th class="th_center">������</th>
					<td class="left" colspan="3">
						<input name="origin_place_radio" type="radio" value="" /><span>��������Ȯ��</span>
						<input name="origin_place_radio" type="radio" value="������" checked="checked" /><span>������</span>
						<input name="origin_place_radio" type="radio" value="�߱���" /><span>�߱���</span>
					</td>
				</tr>
				<tr>
					<th class="th_center">����</th>
					<td class="left" colspan="3"><span>��ǰ���� : </span>
						<input type="text" name="prime_price" id="prime_price" value="30000" class="inputbox50" />�� 
						<div id="B2CPrice">
							<span>��  ��  �� : </span><input type="text" name="price" id="price" value="34000" class="inputbox50" />��
						</div></td>
				</tr>
				<tr class="center">
					<th class="th_center">�ɼǺ�����<br /> 
					 	<img src="./img/admin_btn_mplus.gif" class="clickbutton" id="optionPlus" STYLE="type:button; value:�߰�" /> 
						<img src="./img/admin_btn_sdel.gif" class="clickbutton" id="optionDel" STYLE="type:button; value:����" />
					</th>
					<td colspan="3">
						<div>�ɼǱ��� | �ɼǸ�+�� = �ɼǸ�+�ݾ�;�ɼǸ�+�ݾ�;....</div> 
						<table class="product_option" style="width:600px; cellpadding:0; cellspacing:0; border:0">

							<tr>
								<td class="td_cen"><input type="text"
									name="option_title_update" value=""
									class="inputbox" style="width: 100px;" /></td>
								<td class="td_cen"><input type="text"
									name="option_value_update" value=""
									class="inputbox01" style="width: 400px; text-align: left" /><input
									type="hidden" name="option_seq_update" value="" />
								</td>
							</tr>
						</table> 
						<div id="product_option_box">
							<table class="product_option"  style="width:600px; cellpadding:0; cellspacing:0; border:0">
								<tr>
									<td class="td_cen"><input type="text" name="option_title"
										value="" class="inputbox" style="width: 100px;" /></td>
									<td class="td_cen"><input type="text" name="option_value"
										value="" class="inputbox01" style="width: 400px;" /></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<th class="th_center">�������</th>
					<td class="left" colspan="3"><label><input
							type="radio" name="charge_type" value="cash"
							 checked="checked"  />
							����</label> <label><input type="radio" name="charge_type"
							value="card"  checked="checked"
							/> ī��</label> <label><input type="radio"
							name="charge_type" value="both"
							checked="checked"  /> ����+ī��</label></td>
				</tr>
				<tr>
					<th class="th_center">�̹���</th>
					<td class="left" colspan="3"><input type="file" name="file"
						class="inputbox01" />
						<span id="img1">
							<img src="/upload/product/" border="0" />&nbsp;
							<img src="./img/admin_btn_del.gif" style="type:button" class="clickbutton" id="delimg1" /></span><br />
							<input type="file" name="file" class="inputbox01" />
						<span id="img2">
							<img src="/upload/product/" border="0" />&nbsp;
							<img src="./img/admin_btn_del.gif" style="type:button"	class="clickbutton" id="delimg2" /></span><br />
							<input type="file" name="file" class="inputbox01" />
						<span id="img3">
							<img src="/upload/product/" border="0" />&nbsp;
							<img src="./img/admin_btn_del.gif" style="type:button" class="clickbutton" id="delimg3" /></span><br /> 
							<input type="file" name="file" class="inputbox01" />
						<span id="img4">
							<img src="/upload/product/" border="0" />&nbsp;
							<img src="./img/admin_btn_del.gif" style="type:button" class="clickbutton" id="delimg4" /></span><br /> 
							<input type="file" name="file" class="inputbox01" />
						<span id="img5">
							<img src="/upload/product/" border="0" />&nbsp;
							<img src="./img/admin_btn_del.gif" style="type:button" class="clickbutton" id="delimg5" /></span>
						</td>
				</tr>
				<tr>
					<th class="th_center">�̹��� �󼼻���</th>
					<td class="left" colspan="3">
						<input type="checkbox"	name="content_include" id="content_include" value="Y" checked="checked"  />
					</td>
				</tr>

				<tr>
					<th class="th_center">���� �̹���</th>
					<td class="left" colspan="3">
						 <label><input type="checkbox" name="comImg" value=""  checked="checked"> </label> 
					</td>
				</tr>

				<tr>
					<th class="th_center">�󼼼���</th>
					<td class="left" colspan="3">
						<div id="contentTab">
							<textarea id="prd_content" name="prd_content" style="width:100%; height:100px; /* display:none; */"></textarea>
						</div>
						<br><input type="button" value="�̹���÷��" id="imgPluse" name="imgPluse" class="clickbutton01" /> 
					</td>
				</tr>
				<tr>
					<th class="th_center">�޸�</th>
					<td class="left" colspan="3">
						<textarea id="prd_memo" name="prd_memo" class="textarea" style="width:100%; height: 150px;"></textarea></td>
				</tr>
				<tr>
					<td class="td_cen" colspan="4"><span class="action">
						<img src="./img/admin_btn_enter.gif" class="clickbutton" id="submitbutton2" STYLE="type:button; value:�Է�" /> 
						<img src="./img/admin_btn_list.gif" class="clickbutton" id="listbutton2" STYLE="type:button; value:����Ʈ" /> 
						<img src="./img/admin_btn_del.gif" class="clickbutton" id="deletebutton2" STYLE="type:button; value:����" /> 
						<img src="./img/admin_btn_zero.gif" class="clickbutton" id="resetbutton2" STYLE="type:button; value:�ʱ�ȭ" /></span></td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</div>