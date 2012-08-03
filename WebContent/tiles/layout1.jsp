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
		<div id="allcontainer" style="width:950px;margin:0 auto;">
		<div id="menu" style="width:245px; height:200px; posion:absolut; float:left; ">
			<tiles:insertAttribute name="menu" />
		</div>
		<div id="container" style="width:700px; height:200px; posion:absolut; float:right;">
			<tiles:insertAttribute name="body" />
		</div>
		</div>
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>