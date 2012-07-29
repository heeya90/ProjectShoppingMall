<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<title><tiles:getAsString name="title" /></title>
<link href="./sitehelper/common/style_list.css" rel="stylesheet"
	type="text/css" />
</head>
<body class="body">
	<div id="wrap00">
		<div id="left00">
			<div id="left">
				<div class="left_timg">
					<a href="http://www.giftmani.com" target="_blank">
					<img src="./sitehelper/img/admin_list_lt.gif" alt="관리자메인" /></a>
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
						<iframe src="/doweb/session.asp" style="frameborder: 0" width="0" height="0"></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>