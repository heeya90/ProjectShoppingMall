<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<link href="./common/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="user/js/user_main.js"></script>
<!--content -->
<div id="content">
	<!-- contents -->
	<div id="sub_con" >
		<input type="hidden" name="referer" value="" /><!-- 이전페이지로이동하기 -->
		<!--content 현재위치 -->
		<div class="sub_loca">
			<img src="./img/icon_home.gif" alt="현재위치" />홈-PShoppingMall MainPage
		</div>
		<h2>
			<img src="./img/best_tt01.gif" alt="MD추천상품"  style="margin-top:22px;"/>
		</h2>
		<div id="md_choice">
			<!-- md's choice menu -->
			<div class="md_tab">
				<ul id="rollingSwitchTab">
					<li class="firstChild">MD 추천 전체 보기</li>
					<%=request.getAttribute("category2list")%>
				</ul>
			</div>
			<!-- //md's choice menu -->
			<!-- md's choice #1 -->
			<div class="md_con">
				<div class="md_con_A">
					<div class="my_stt02">
						<table  class="my_stt02_table">
							<thead class="my_stt02_th">
							<tr>
								<th style="width:200">상품이미지</th>
								<th style="width:100">상품코드</th>
								<th style="width:150">상품명</th>
								<th style="width:100">판매가</th>
								<th style="width:100">제조사</th>
								<th style="width:100">원산지</th>
								<th></th>
							</tr>	
							</thead>
							<tbody class="my_stt02_tbl">
								<%=request.getAttribute("goods1")%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- //md's choice #1 -->
		</div>		
			
		<h2>
			<img src="./img/best_tt02.gif" alt="Best 판매 상품" style="margin-top:10px;"/>
		</h2>
		<div id="md_choice">
			<!-- Best menu -->
			<div class="md_tab">
				<ul id="rollingSwitchTab">
					<li class="firstChild">인기상품 전체 보기</li>
					<%=request.getAttribute("category2list")%>
				</ul>
			</div>
			<!-- //Best menu -->
			<!-- Best choice #1 -->
			<div class="md_con">
				<div class="md_con_A">
					<div class="my_stt02">
						<table  class="my_stt02_table">
							<thead class="my_stt02_th">
							<tr>
								<th style="width:200">상품이미지</th>
								<th style="width:100">상품코드</th>
								<th style="width:150">상품명</th>
								<th style="width:100">판매가</th>
								<th style="width:100">제조사</th>
								<th style="width:100">원산지</th>
								<th></th>
							</tr>	
							</thead>
							<tbody class="my_stt02_tbl">
								<%=request.getAttribute("goods2")%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- //Best choice #1 -->
		</div>
	</div>



	<!-- 고객센터 -->
	<div id="cm_ct">
		<!-- 쇼핑 공지사항 -->
		<div class="sp_ntc">
			<div class="sp_ntt">
				<span class="sp_nt_tt">
					<img src="./img/sp_tt01.gif" alt="쇼핑 공지사항" />
				</span> 
				<span class="sp_nt_plus">
					<a href="#"><img src="./img/pd_sp_plus.gif" alt="더보기" /></a>
				</span>
			</div>
			<div class="sp_noti">
				<div class="sp_nt_text">
					<span class="sp_ntdot"><img src="./img/sp_dot.gif" /></span> <span
						class="sp_text"><a href="#">무더운여름 시원한 여름사은품추천!!..</a></span>
				</div>
				<div class="sp_nt_text">
					<span class="sp_ntdot"><img src="./img/sp_dot.gif" /></span> <span
						class="sp_text"><a href="#">국내 최저가 사은품론칭-[더플라워강..</a></span>
				</div>
				<div class="sp_nt_text">
					<span class="sp_ntdot"><img src="./img/sp_dot.gif" /></span> <span
						class="sp_text"><a href="#">[여름행사용품 모음전] 여름야외용품..</a></span>
				</div>
			</div>
			<div class="sp_cash">
				<span class="sp_cashtt">
					<img src="./img/sp_cashtt.gif" alt="입금안내" />
				</span> 
				<span class="sp_cashnum">
					<img src="./img/sp_cashnum.gif" alt="우리은행1055-901-342463/농협074-01-185086/외환은행144-22-01638-5/예금주(주)앳디드" />
				</span>
			</div>
			<div class="sp_cachtext">입금확인은 1시간마다 이루어집니다.</div>
		</div>
		<!--// 쇼핑 공지사항 -->
		<!-- 쇼핑 가이드 -->
		<div class="sp_gid">
			<div class="sp_gtt">
				<span class="sp_gt_tt"><img src="./img/sp_tt02.gif"
					alt="쇼핑 가이드" /></span>
			</div>
			<div class="sp_gt_text">
				<ul class="sp_txt">
					<li><a href="#"><img src="./img/sp_stt01.gif" alt="사용자 리뷰" /></a></li>
					<li><a href="#"><img src="./img/sp_stt02.gif" alt="샘플주문신청" /></a></li>
				</ul>
				<ul class="sp_txt">
					<li><a href="#"><img src="./img/sp_stt03.gif"
							alt="이용안내faq" /></a></li>
					<li><a href="#"><img src="./img/sp_stt04.gif"
							alt="1:1고객상담" /></a></li>
				</ul>
				<ul class="sp_txt">
					<li><a href="#"><img src="./img/sp_stt05.gif" alt="인쇄시안확인" /></a></li>
					<li><a href="#"><img src="./img/sp_stt06.gif"
							alt="판촉물쇼핑주문가이드" /></a></li>
				</ul>
				<ul class="sp_txt">
					<li><a href="#"><img src="./img/sp_stt07.gif" alt="납품사례" /></a></li>
					<li><a href="#"><img src="./img/sp_stt08.gif" alt="견적요청" /></a></li>
				</ul>
			</div>
			<div class="sp_gt_tt00">
				<div class="sp_gt_text00">
					<span class="sp_txt01"><img src="./img/sp_btt01.gif"
						alt="고객자료발송시스템" /></span> <span class="sp_txt02"><a href="#">서비스이용하기</a></span>
				</div>
			</div>
		</div>
		<!--// 쇼핑 가이드 -->
		<!-- 쇼핑 고객센터 -->
		<div class="sp_ct">
			<div class="sp_ctt">
				<span class="sp_ct_tt"><img src="./img/sp_tt03.gif"	alt="쇼핑 고객센터" /></span>
			</div>
			<div class="sp_ct_txt">
				<img src="./img/sp_num.gif" alt="대표전화 02-883-6151" />
			</div>
			<div class="sp_ct_txt01">
				<img src="./img/sp_time.gif" alt="이용안내 평일오전9시~오후7시까지(점심시간 12시~1시)" />
			</div>
			<div class="sp_ct_txt02">
				<img src="./img/sp_email.gif" alt="대표이메일 giftmani@empal.com" />
			</div>
		</div>
		<!--// 쇼핑 고객센터 -->
	</div>
	<!--// 고객센터 -->
	<!-- 배너 -->
	<div class="f_banner">

		<div class="f_b_law">
			<a href="#"><img src="./img/bnr_larrow.gif" alt="왼쪽화살표" /></a>
		</div>
		<div id="point-ranking-container" class="container">
			<div class="bannerimg">
				<ul>
					<li><img src="./img/f_bnr01.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr02.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr03.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr04.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr05.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr06.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr07.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr08.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr09.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr10.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr11.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr12.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr13.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr14.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr15.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr16.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr17.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr18.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr19.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr20.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr21.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr22.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr23.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr24.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr25.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
					<li><img src="./img/f_bnr26.gif" alt="배너" /></li>
					<li><img src="./img/bnr_line.gif" alt="배너라인" /></li>
				</ul>
			</div>
		</div>
		<div class="f_b_raw">
			<a href="#"><img src="./img/bnr_rarrow.gif" alt="오른쪽화살표" /></a>
		</div>
	</div>
	<!--// 배너 -->
</div>
<!--//content -->