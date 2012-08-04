<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <script type="text/javascript" src="./common/jquery/jquery-ui-1.8.22.custom.min.js"></script>
<div id="header">
	<!-- TOP GNB -->
	<div class="tgnb">
		<ul>
			<li><span>${user}님 환영합니다^^</span></li>
			<li><span class="log"><a href="no_user_login.tiles" id="topLogin">로그인</a></span></li>
			<li><span class="logout"><a href="로그아웃.두" id="topLogout">로그아웃</a></span></li>
			<li><span class="mem"><a href="no_user_reg.tiles" id="topMember">회원가입</a></span></li>
			<li><span class="cart">|<a href="m_order_cart.tiles" id="topCart">장바구니</a></span></li>
			<li><span class="center">|<a href="#" id="board">고객센터</a></span></li>
			<li><span class="upload"><a href="#">이미지업로드</a></span></li>
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
				<legend>검색</legend>
				<div class="search_box">
					<input type="text" name="keyword" title="검색" value="" accesskey="s" class="search_text">
					<input src="./img/btn_srch.gif" alt="검색" type="image" class="btn_search">
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
				<li id="topMenu1"><a href="m_goods_list.tiles" class="menu_01"><span>상품목록</span></a></li>
				<li id="topMenu2"><a href="m_order_order.tiles" class="menu_01"><span>주문하기</span></a></li>
				<li id="topMenu3"><a href="m_mypage_modify.tiles" class="menu_01"><span>마이페이지</span></a></li>
				<li id="topMenu4"><a href="../product/sub.asp?categoryA=4" class="menu_01"><span>남성 스포츠 의류</span></a></li>
				<li id="topMenu5"><a href="../product/sub.asp?categoryA=3" class="menu_01"><span>여성 스포츠 의류</span></a></li>
				<li id="topMenu6"><a href="../product/sub.asp?categoryA=6" class="menu_01"><span>남성 캐쥬얼</span></a></li>
				<li id="topMenu7"><a href="../product/sub.asp?categoryA=7" class="menu_01"><span>여성 캐쥬얼</span></a></li>
				<li id="topMenu8"><a href="../product/sub.asp?categoryA=202" class="menu_01"><span>남성&amp;여성 모자</span></a></li>
			</ul>
		</div>                        
	</div>
	<!-- //GNB -->
	<!-- //MENU -->
</div>           