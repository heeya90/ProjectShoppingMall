<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="model.beans.GoodsBean"%>
<%@ page import="java.util.ArrayList" %> 
<table id="getrecomgoods" style="border:1 solid black" >
	<thead>
		<tr>
			<th class="theader" >������ ��õ ��ǰ</th>
		</tr>
		<tr>
			<th class="theader">��ǰ�̹���</th>
			<th class="theader">��ǰ�ڵ�</th>
			<th class="theader">��ǰ��</th>
			<th class="theader">��ǰ����</th>
			<th class="theader">������/������</th>
			<th class="theader">�Ǹŷ�</th>
		</tr>
	</thead>
	<tbody>
	<%= request.getAttribute("arrgood1s") %>
	</tbody>
</table>
<table id="getbestgoods" >
	<thead>
		<tr>
			<th class="theader">�Ǹ� �α��ǰ</th>
		</tr>
		<tr>
			<th class="theader">��ǰ�̹���</th>
			<th class="theader">��ǰ�ڵ�</th>
			<th class="theader">��ǰ��</th>
			<th class="theader">��ǰ����</th>
			<th class="theader">������/������</th>
			<th class="theader">�Ǹŷ�</th>
		</tr>
	</thead>
	<tbody>
	<%= request.getAttribute("arrgood1s") %>
	</tbody>
</table>