<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>�����ڸ��(ī�װ�)</title>

<div id="sub_contents">
	<div id="content">
		<div class="admin_loca"> HOME - ��ǰ���� - <b>ī�װ�����</b>
		</div>
		<div class="admin_title">ī�װ� ����Ʈ</div>

		<div style="padding-left: 20px; margin: 0 auto; text-align: center">
			<div class="categoryBox">
				<div class="categoryGubun">��з�</div>
				<div class="categorySelectBox" style="padding-left: 20px; float: left">
				 	<select name="categoryA" id="categoryA" class="selectBox" size="16"></select>
				
				</div>
				<div class="categoryMove" style="padding-right: 10px; float: left">
					<span class="pointer" id="upA">��</span><br>
					<span class="pointer" id="downA">��</span>
				</div>
				<div class="categorySet" style="clear: both;">
					<input type="text" id="categoryName1" class="inputbox" />
					<input type="button" class="clickbutton03" id="newbutton1" value="���" />
					<input type="button" class="clickbutton06" id="updatebutton1" value="����" />
					<input type="button" class="clickbutton05" id="deletebutton1" value="����" />
				</div>
				<input type="hidden" id="group" value="A" />
			</div>

			<div class="categoryBox">
				<div class="categoryGubun">�ߺз�</div>
				<div class="categorySelectBox" style="padding-left: 20px; float: left">
					<select name="categoryB" id="categoryB" class="selectBox" size="16"></select>
				</div>
				<div class="categoryMove" style="padding-right: 10px; float: left">
					<span class="pointer" id="upB">��</span><br>
					<span class="pointer" id="downB">��</span>
				</div>
				<div class="categorySet" style="clear: both;">
					<input type="text" id="categoryName2" class="inputbox" />
					<input type="button" class="clickbutton03" id="newbutton2" value="���" />
					<input type="button" class="clickbutton06" id="updatebutton2" value="����" />
					<input type="button" class="clickbutton05" id="deletebutton2" value="����" />
				</div>
				<input type="hidden" id="group" value="B" />
			</div>
		</div>
	</div>
</div>
