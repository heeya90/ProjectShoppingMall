<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div id="header">
	<!-- TOP GNB -->
	<div class="tgnb">
		<ul>
			<li><span>${user}�� ȯ���մϴ�^^</span></li>
			<li><span class="log"><a href="UserLoginBefore.do"	id="topLogin">�α���</a></span></li>
			<li><span class="logout"><a href="�α׾ƿ�.��" id="topLogout">�α׾ƿ�</a></span></li>
			<li><span class="mem"><a href="UserReg1p.do" id="topMember">ȸ������</a></span></li>
			<li><span class="center">|<a href="MypageUserView.do" id="topmypage">����������</a></span></li>
			<li><span class="cart">|<a href="m_order_cart.tiles" id="topCart">��ٱ���</a></span></li>
			<li><span class="center">|<a href="Other_44.do" id="board">������</a></span></li>
			<li><span class="upload"><a href="Other_44.do">�̹������ε�</a></span></li>
		</ul>
	</div>
	<!-- //TOP GNB -->
	<!-- SEARCH -->
	<div class="sta">
		<h1>
			<a href="UserMain.do"><img src="./img/f_logo.gif" width="146" height="40" alt="PSHOPPINGMALL" /></a>
		</h1>
		<form action="">
			<fieldset>
				<legend>�˻�</legend>
				<div class="search_box">
					<input type="text" name="keyword" title="�˻�" value="" accesskey="s" class="search_text"> <input src="./img/btn_srch.gif" alt="�˻�" type="image" class="btn_search">
				</div>
			</fieldset>
		</form>
		<h2>
			<img src="./img/gnb_tel.gif" alt="" />
		</h2>
		<div class="evnet_icon">
			<a href="Other_44.do"><img src="./img/event_icon.jpg" alt="���ϸ��� �������� �̺�Ʈ" /></a>
		</div>
	</div>
	<!-- //SEARCH -->
	<!-- MENU -->
	<!-- GNB -->
	<div id="gnb">
		<div class="gnb">
			<ul class="headercategory">
				<%=session.getAttribute("category1")%>
			</ul>
		<div id="category">
			<div class="cate_all">
				<div id="cate_list" class="cate_list">
					<h2>
						<a href="Other_44.do"><img src="./img/all_cate.gif" alt="��üī�װ�" /></a>
					</h2>
					<div id="catelist" class="lst" style="width: 954px;">
						<ul style="width: 954px;" class="cate_ul01">
							<div id="categoryGroupstitle"></div>
						</ul>
						<span class="cbtn"><a href="#">�ݱ�<img
								src="./img/cate_close.gif" alt="X" /></a></span>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
	<!-- //GNB -->
	<!-- //MENU -->
</div>