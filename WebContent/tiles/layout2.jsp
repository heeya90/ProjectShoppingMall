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
		<div id="container" style="width:950px;margin:0 auto;">
			<tiles:insertAttribute name="body" />
		</div>
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>