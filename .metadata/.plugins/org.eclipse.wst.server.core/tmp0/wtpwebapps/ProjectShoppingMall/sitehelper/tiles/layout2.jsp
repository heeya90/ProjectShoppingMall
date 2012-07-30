<%@ page contentType="text/html; charset=euc-kr"%>
<link href="common/common.css" rel="stylesheet" type="text/css"></link>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<title><tiles:getAsString name="title" /></title>
</head>
<body>

	<table style="width:100%; cellpadding:0; cellspacing:0; border: 1px solid black">
		<tr>
			<td><tiles:insertAttribute name="header" /></td>
		</tr>
		<tr>
			<td><tiles:insertAttribute name="body" /></td>
		</tr>
		<tr>
			<td><tiles:insertAttribute name="footer" /></td>
		</tr>
	</table>
	
</body>
</html>