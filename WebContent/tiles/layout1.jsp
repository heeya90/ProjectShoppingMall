<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<table
		style="width: 100%; cellpadding: 0; cellspacing: 0; border: 1px solid black">
		<tr>
			<td><tiles:insertAttribute name="header" /></td>
		</tr>
		<tr>
			<td>
				<table
					style="width: 100%; cellpadding: 0px; cellspacing: 0px; border: 1px solid black">
					<tr>
						<td style="valign: top; width: 20%"><tiles:insertAttribute
								name="menu" /></td>
						<td><tiles:insertAttribute name="body" /></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><tiles:insertAttribute name="footer" /></td>
		</tr>
	</table>

</body>
</html>