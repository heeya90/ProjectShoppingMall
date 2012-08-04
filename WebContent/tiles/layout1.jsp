<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<div id="wrap">
		<div id="head" style="border:1 solid black">
			<tiles:insertAttribute name="header"   />
		</div>
		<div id="container">
			<div id="menu" style="width:245px; float:left;">
				<tiles:insertAttribute name="menu" />
			</div>
			<div id="body" style="width:700px; float:right;">
				<tiles:insertAttribute name="body" />
			</div>
		</div>
		<div style="border:1 solid black">
			<tiles:insertAttribute name="footer"  />
		</div>
	</div>
</body>
</html>