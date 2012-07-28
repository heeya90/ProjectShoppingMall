<%@ page contentType="text/html; charset=euc-kr"%>
<html>
<head>
<title></title>
<link href="../css/style_list.css" rel="stylesheet" type="text/css" />

</head>
<body class="body">
	<div id="wrap00">

<div id="left00">
<div id="left">
	<div class="left_timg">
		<a href="http://www.giftmani.com" target="_blank"><img src="../images/admin_list_lt.gif" alt="관리자메인" /></a>
</div>
	
	<div class="left_tmenu">게시판관리
	</div>

	<div class="left2">

	<ul class="left_mu_ul">
		<li class="left_mu_li">게시판</li>
			<ul class="mu_ul">
				<li class="mu_li"><a href="notice.asp?tblName=inner">내부공지사항</a></li>
				<li class="mu_li"><a href="notice.asp?tblName=outer">공지사항</a></li>
			</ul>



		<li class="left_mu_li">고객게시판 리스트</li>
			<ul class="mu_ul">
				<li class="mu_li"><a href="upload_list.asp">파일업로드 리스트</a></li>
				<li class="mu_li"><a href="reorder_list.asp">간단주문 리스트</a></li>
				<li class="mu_li"><a href="question_list.asp">상품별Q/A</a></li>
			</ul>


	</ul>
	</div>

</div>

<div id="top00">

<div id="header">

	<div id="menu">


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


	</div>

<div id="sub_contents">
	<div id="content">
		<div class="admin_loca">HOME > 게시판관리 > <b>내부게시판 리스트</b></div>

		<div class="admin_title">내부게시판 리스트</div>

		<div class="admin_total">
		<div id="list">
			<div class='companyWhere'> 등록수 : [21]개</div>
		</div>
		</div>


<!-- 검색 부분 시작 -->
		<div class="admin_tsearch">
			<div class="admin_tss00">
				<div class="admin_tss_new">

					<span class="admin_tss_01">						
						<input type="hidden" name="tblName" value="inner" />
						<input type="text" name="sKey" class="input_box_txt01" value="" /><a href="#"><img src="../images/admin_btn_msearch.gif" alt="검색" id="searchBtn" /></a>
					</span>


				</div>
			</div>
		</div>
<!-- 검색 부분 끝 -->



		<table width="780">
			<thead>
				<tr>
					<th>번호</th>					
					<th>제목</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			<thead>
			<tbody>
				
				<tr>
					<td class="td_cen">21</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=22&nPage=1&tblName=inner&shop_code=&sKey=&sType=">시주용 물품구입건</a></td>
					<td class="td_cen">2012-06-11</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">20</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=21&nPage=1&tblName=inner&shop_code=&sKey=&sType=">수유지점 보그2단엠보우산 300개 주문건</a></td>
					<td class="td_cen">2012-05-30</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">19</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=20&nPage=1&tblName=inner&shop_code=&sKey=&sType=">명지총동문회 담당자</a></td>
					<td class="td_cen">2012-05-30</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">18</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=19&nPage=1&tblName=inner&shop_code=&sKey=&sType=">[지방의 업자문의] 종지 생선접시세트</a></td>
					<td class="td_cen">2012-05-24</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">17</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=18&nPage=1&tblName=inner&shop_code=&sKey=&sType=">농협 이승현과장 문의</a></td>
					<td class="td_cen">2012-05-17</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">16</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=17&nPage=1&tblName=inner&shop_code=&sKey=&sType=">유비코리아 세금계산서발행 이메일주소</a></td>
					<td class="td_cen">2012-05-10</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">15</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=16&nPage=1&tblName=inner&shop_code=&sKey=&sType=">동대구농협 곽티슈농협케이스 제작내용</a></td>
					<td class="td_cen">2012-05-08</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">14</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=15&nPage=1&tblName=inner&shop_code=&sKey=&sType=">봉천동 거주자 시계 2개구매건</a></td>
					<td class="td_cen">2012-05-08</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">13</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=14&nPage=1&tblName=inner&shop_code=&sKey=&sType=">곽티슈 농협케이스 제작건</a></td>
					<td class="td_cen">2012-05-08</td>
					<td class="td_cen">0</td>
				</tr>
				
				<tr>
					<td class="td_cen">12</td>					
					<td class="td_cen"><a href="notice_view.asp?seq=13&nPage=1&tblName=inner&shop_code=&sKey=&sType=">볼펜 아주자동차대학 5000개 </a></td>
					<td class="td_cen">2012-05-07</td>
					<td class="td_cen">0</td>
				</tr>
				
			</tbody>
		</table>
		

		<div class="admin_list">		
		
		<a href="notice.asp?sKey=&sType=&tblName=inner&nPageSize=10&shop_code=&nPage=1">1</a>  | 
		<a href="notice.asp?sKey=&sType=&tblName=inner&nPageSize=10&shop_code=&nPage=2">2</a>  | 
		<a href="notice.asp?sKey=&sType=&tblName=inner&nPageSize=10&shop_code=&nPage=3">3</a> 
		<span><a href="notice.asp?sKey=&sType=&tblName=inner&nPageSize=10&shop_code=&nPage=2">다음</a></span>  
		
		</div>


		

		<div class="admin_arr_cen"><input type="button" value="글쓰기" onClick="location.href='notice_write.asp?nPage=1&nPageSize=10&sKey=&sType=&shop_code=&tblName=inner'" class="clickbutton08" />
		</div>

	

<div id="footer">
	<span class="footer_copy">
	copyright ⓒ 2010 by atdid All rights reserved
	</span>
</div>

</div>
<iframe src="/doweb/session.asp" frameborder="0" width="0" height="0"></iframe>

	</div>

</div>

</div></div></div>
</body>
</html>