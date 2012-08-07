<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<script type="text/javascript" src="./common/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript" src="./common/common.js"></script>
<script type="text/javascript" src="./common/jquery/jquery-ui-1.8.22.custom.min.js"></script>
<link href="./common/common.css" rel="stylesheet" type="text/css" />
<link href="./common/board.css" rel="stylesheet" type="text/css" />
<link href="./common/jquery-ui-1.8.22.custom.css" rel="stylesheet" type="text/css" />
<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<div id="wrap">
		<!-- header -->
		<div id="head">
			<tiles:insertAttribute name="header" />
		</div>
		<!-- //header -->
		<!-- container -->
		<div id="container">
			<div id="menu" style="width: 220px; float: left;">
				<tiles:insertAttribute name="menu" />
			</div>
			<div id="body" style="width: 725px; float: right;">
				<tiles:insertAttribute name="body" />
			</div>
		</div>
		<!-- //container -->
		<!-- footer -->
		<div>
			<tiles:insertAttribute name="footer" />
		</div>
		<!-- //footer -->
	</div>
</body>
</html>