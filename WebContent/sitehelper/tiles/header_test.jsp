<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="top1">
			
			<div class="admin_tleft">
				<select name="sel" class="admin_select">
					<option value="g_name" >상품명+코드</option>
					<option value="info9" >상품코드2</option>
					<option value="man" >등록자</option>
					<option value="userid" >등록자 ID</option>
					<option value="com_code" >매입처코드</option>
					<option value="content" >상품설명</option>
				</select>
				<input type="text" name="topSearch" class="input_box" /><a href="#" id="topSearchGo"><img src="../images/admin_btn_tsearch.gif" alt="검색" /></a>
			</div>
			
			<div class="admin_tright">
				<span class="admin_tbtn"><a href="../jumun/daejumun.asp"><img src="../images/admin_btn_jumun.gif" alt="주문대행바로가기" /></a></span>
				<span class="admin_ttxt"><b>변재정</b>님의 <b>1,212</b> 번째 방문입니다.</span>
				<span class="admin_btn_logout"><a href="#" id="logout"><img src="../images/admin_btn_logout.gif" alt="로그아웃" /></a></span>
			</div>
				
				
		</div>


		<div class="top2">
			<ul class="top2_ul">
				
				<li class="pointer" id="main/index"><a href="#">HOME</a></li>				
				
				<li class="pointer" id="member/list"><a href="#">회원관리</a></li>
				
				<li class="pointer" id="jumun/jumun_list"><a href="#">주문관리</a></li>
				
				<li class="pointer" id="maechul/maechul_list"><a href="#">매출관리</a></li>
				
				<li class="pointer" id="product/companyList"><a href="#">상품관리</a></li>
				<!--li class="pointer" id="shopData/shopData"><a href="#">B2C SHOP</a></li-->
				<li class="pointer" id="board/notice"><a href="#">게시판관리</a></li>
				<li class="pointer" id="shopData/shopData"><a href="#">업무관리</a></li>
				<!-- <li class="pointer" id="shopData/shopData"><a href="#">기초관리</a></li> -->
				<li class="pointer" id="set/shopList"><a href="#">환경설정</a></li>
				
				<li class="pointer" id="stats/counter"><a href="#">통계</a></li>
			</ul>
		</div>