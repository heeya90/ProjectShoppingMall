<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div{
	border:1px solid blue;
	margin:3px;
}
td{
	border:1px solid red;
	vertical-align: middle;
	text-align:center;
}
table{
	border:1px solid black; 
	margin-top:50px; 
	padding:10px; 
	width:50%
}
.bold{
	color:blue;
	font-weight:bold;
}
</style>
</head>
<body>
	<table align="center">
		<tr>
			<td>
				<label class="bold">xx</label>
				<label>님의 주문이 완료되었습니다.</label>
			</td>
		</tr>
		<tr>
			<td>
				<label>주문 번호는 </label> &nbsp;
				<label class="bold">0000000</label>
				<label>입니다.</label>
			</td>
		</tr>
		<tr>
			<td>
				<label>총 결제 금액은</label> &nbsp;
				<label class="bold">0000000</label>
				<label>입니다.</label>
			</td>
		</tr>
	</table>
</body>
</html>