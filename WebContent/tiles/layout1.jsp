<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<title><tiles:getAsString name="title" /></title>
<link href="./common/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="wrap">
		<div id="head">
			<tiles:insertAttribute name="header" />
		</div>

		<div id="menu" style="width:200px; posion:absolut; float:left; border: 1px solid black">
			<tiles:insertAttribute name="menu" />
		</div>
		<div id="container" style="width:950px; posion:absolut; float:center; border: 1px solid black">
			<tiles:insertAttribute name="body" />

		</div>
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>