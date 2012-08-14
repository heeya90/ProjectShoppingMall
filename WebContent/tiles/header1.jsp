<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div id="header">
	<!-- TOP GNB -->
	<div class="tgnb">
		<ul>
			<li><span>${user}님 환영합니다^^</span></li>
			<li><span class="log"><a href="UserLoginBefore.do"	id="topLogin">로그인</a></span></li>
			<li><span class="logout"><a href="로그아웃.두" id="topLogout">로그아웃</a></span></li>
			<li><span class="mem"><a href="UserReg1p.do" id="topMember">회원가입</a></span></li>
			<li><span class="center">|<a href="MypageUserView.do" id="topmypage">마이페이지</a></span></li>
			<li><span class="cart">|<a href="m_order_cart.tiles" id="topCart">장바구니</a></span></li>
			<li><span class="center">|<a href="Other_44.do" id="board">고객센터</a></span></li>
			<li><span class="upload"><a href="Other_44.do">이미지업로드</a></span></li>
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
				<legend>검색</legend>
				<div class="search_box">
					<input type="text" name="keyword" title="검색" value="" accesskey="s" class="search_text"> <input src="./img/btn_srch.gif" alt="검색" type="image" class="btn_search">
				</div>
			</fieldset>
		</form>
		<h2>
			<img src="./img/gnb_tel.gif" alt="" />
		</h2>
		<div class="evnet_icon">
			<a href="Other_44.do"><img src="./img/event_icon.jpg" alt="마일리지 선물쿠폰 이벤트" /></a>
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
						<a href="Other_44.do"><img src="./img/all_cate.gif" alt="전체카테고리" /></a>
					</h2>
					<div id="catelist" class="lst" style="width: 954px;">
						<ul style="width: 954px;" class="cate_ul01">
							<div id="categoryGroupstitle"></div>
						</ul>
						<span class="cbtn"><a href="#">닫기<img
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