<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<link href="./common/mypage.css" rel="stylesheet" type="text/css" />
<%String id=(String)session.getAttribute("user"); boolean login = id == null? false:true; %>
<!--content -->
<div id="content">
	<div class="sub_con">
		<!--content ������ġ -->
		<div class="sub_loca">
			<img src="./img/icon_home.gif" alt="������ġ" />Ȩ - ���������� - ������������
		</div>
		<!--content Ÿ��Ʋ -->
		<div class="sub_v_tt">
			<h2>������������</h2>
		</div>
		<!--//content Ÿ��Ʋ -->
		<!--content ���������� -->
		<div class="my_page">
			<div class="my_t_txt">
				<span class="my_stt01_txt">
					<ol>
						<li>�����հ�ݾ��� 30���� �̻��� ��� ī�� ������ ���ͳݹ�ŷ ������������ �ʿ��մϴ�.<br>
							���� ������������ ������ ��� 30���� ������ �ݾ����� ������ �ֹ��� �ֽñ� �ٶ��ϴ�.
						</li>
						<li>��ٱ��Ͽ� ��� ��ǰ�� �ִ� 15�ϰ� ����Ǹ�, �ǸŰ� ����� ��ǰ �� ǰ���� ��ǰ�� ����Ʈ��
							�����˴ϴ�.</li>
						<li>��ȸ���� ��� ��ٱ��Ͽ� ��� ��ǰ�� ������ ���� �� �ڵ����� �����ǿ���, ȸ�������� ���ֽñ�
							�ٶ��ϴ�.</li>
					</ol>
				</span>
			</div>
			<div class="my_stt02">
				<div class="join01_con">
					<div class="join02_form01">
						<table border="1" class="join02_form02">
							<colgroup>
								<col width="117px">
								<col width="">
							</colgroup>

							<tr class="join02_tr">
								<th class="join02_left01"><b>*</b> �̸�</th>
								<td class="join02_right"><%=request.getAttribute("name")%></td>
							</tr>

							<tr class="join02_tr" class="join02_tr">
								<th class="join02_left01"><b>*</b> ���̵�</th>
								<td class="join02_right"><label><%= id %></label></td>
							</tr>

							<tr class="join02_tr">
								<th class="join02_left01"><b>*</b> ��ȭ��ȣ</th>
								<td class="join02_right"><label><%=request.getAttribute("tel1")%>-<%=request.getAttribute("tel2")%>-<%=request.getAttribute("tel3")%></label>
								</td>
							</tr>

							<tr class="join02_tr">
								<th class="join02_left02">�޴�����ȣ</th>
								<td class="join02_right"><label><%=request.getAttribute("cell1")%>-<%=request.getAttribute("cell2")%>-<%=request.getAttribute("cell3")%></label>
								</td>
							</tr>

							<tr class="join02_tr">
								<th class="join02_left01"><b>*</b> �ּ�</th>
								<td class="join02_right">
								<label><%=request.getAttribute("zipcode")%></label><br>
								<label><%=request.getAttribute("addr")%></label>
								<label><%=request.getAttribute("detailaddr")%></label>
								</td>

							<tr class="join02_tr">
								<th class="join02_left02">�̸���</th>
								<td class="join02_right"><label><%=request.getAttribute("email")%></label>
								</td>
							</tr>

						</table>
					</div>
				</div>
				<div class="join01_btn" style="margin-bottom:50px">
				</div>
			</div>
			<!--//content ȸ�������Է� -->
		</div>
	</div>
	<!--//content ���������� -->
</div>
<!--//content -->