<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="model.databasemanage.DBManager" %>
<style type="text/css">
.tab{
	border:1px solid black; 
	padding:10px; 
}
</style>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<div class="sub_loca"><img src="./img/icon_home.gif" alt="������ġ" />Ȩ-�α��� �Ϸ�</div>
<table align="center" style="text-align:center; width:50%; margin-top:50px; border:1px solid black" >
	<tr>
		<td colspan="2"> ȸ�������� �Ϸ�Ǿ����ϴ� </td>
	</tr>
	
	<tr>
		<td style="width:40%">
			<label>�̸�</label> </td>
		<td>
			<label><%= id %> </label></td>
	</tr>
	
	<tr>
		<td>
			<label>���̵� </label></td>
		<td>
			<label><%= pw %> </label></td>
	</tr>
</Table>
