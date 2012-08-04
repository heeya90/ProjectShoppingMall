<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<title><tiles:getAsString name="title" /></title>
<link href="./common/style_list.css" rel="stylesheet" type="text/css" />
<link href="../common/jquery-ui-1.8.22.custom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../common/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript" src="./common/common.js"></script>
<script type="text/javascript" src="../common/jquery/jquery-ui-1.8.22.custom.min.js"></script>
</head>
<body class="body">
	<div id="wrap00">
		<div id="left00">
			<div id="left">
				<div class="left_timg">
					<a href="../index.jsp" target="_blank">
					<img src="./img/admin_list_lt.gif" alt="관리자메인" /></a>
				</div>
				<tiles:insertAttribute name="menu" />
			</div>
			<div id="top00">
				<div id="header">
					<div id="menu">
						<tiles:insertAttribute name="header" />
					</div>
					<div id="sub_contents">
						<div id="content">
							<tiles:insertAttribute name="body" />
							<div id="footer">
								<tiles:insertAttribute name="footer" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
