<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <script type="text/javascript" src="./common/jquery/jquery-ui-1.8.22.custom.min.js"></script>
<div id="header">
	<!-- TOP GNB -->
	<div class="tgnb">
		<ul>
			<li><span>${user}�� ȯ���մϴ�^^</span></li>
			<li><span class="log"><a href="no_user_login.tiles" id="topLogin">�α���</a></span></li>
			<li><span class="logout"><a href="�α׾ƿ�.��" id="topLogout">�α׾ƿ�</a></span></li>
			<li><span class="mem"><a href="no_user_reg.tiles" id="topMember">ȸ������</a></span></li>
			<li><span class="cart">|<a href="m_order_cart.tiles" id="topCart">��ٱ���</a></span></li>
			<li><span class="center">|<a href="#" id="board">������</a></span></li>
			<li><span class="upload"><a href="#">�̹������ε�</a></span></li>
		</ul>
	</div>
	<!-- //TOP GNB -->
	<!-- SEARCH -->
	<div class="sta">
		<h1>
			<a href="../main/main.asp"><img src="./img/f_logo.gif" width="146" height="40" alt="GIFTMANI"/></a>
		</h1>
		<form action="">
			<fieldset>
				<legend>�˻�</legend>
				<div class="search_box">
					<input type="text" name="keyword" title="�˻�" value="" accesskey="s" class="search_text">
					<input src="./img/btn_srch.gif" alt="�˻�" type="image" class="btn_search">
				</div>
			</fieldset>
		</form>
		<h2>
			<img src="./img/gnb_tel.gif" alt="" />
		</h2>
	</div>
	<!-- //SEARCH -->
	<!-- MENU -->
	<!-- GNB -->
	<div id="gnb">
		<div class="gnb">
			<ul>
				<li id="topMenu1"><a href="m_goods_list.tiles" class="menu_01"><span>��ǰ���</span></a></li>
				<li id="topMenu2"><a href="m_order_order.tiles" class="menu_01"><span>�ֹ��ϱ�</span></a></li>
				<li id="topMenu3"><a href="m_mypage_modify.tiles" class="menu_01"><span>����������</span></a></li>
				<li id="topMenu4"><a href="../product/sub.asp?categoryA=4" class="menu_01"><span>���� ������ �Ƿ�</span></a></li>
				<li id="topMenu5"><a href="../product/sub.asp?categoryA=3" class="menu_01"><span>���� ������ �Ƿ�</span></a></li>
				<li id="topMenu6"><a href="../product/sub.asp?categoryA=6" class="menu_01"><span>���� ĳ���</span></a></li>
				<li id="topMenu7"><a href="../product/sub.asp?categoryA=7" class="menu_01"><span>���� ĳ���</span></a></li>
				<li id="topMenu8"><a href="../product/sub.asp?categoryA=202" class="menu_01"><span>����&amp;���� ����</span></a></li>
			</ul>
		</div>                        
	</div>
	<!-- //GNB -->
	<!-- //MENU -->
</div>           