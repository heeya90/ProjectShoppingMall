<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript" src="user/js/user_success.js"></script>
<%
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd1");
	String name = request.getParameter("username");
	String tel = request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3");
	String cell = request.getParameter("mobile1")+"-"+request.getParameter("mobile2")+"-"+request.getParameter("mobile3");
	String email = request.getParameter("email");
	String zipcode = request.getParameter("zipcode");
	String addr = request.getParameter("juso1");
	String detailaddr = request.getParameter("juso2");
%>
<!--content -->
<div id="content">
	<div class="sub_con">
		<!--content 현재위치 -->
		<div class="sub_loca">
			<img src="./img/icon_home.gif" alt="현재위치" />홈 - 회원가입
		</div>
		<!--content 타이틀 -->
		<div class="sub_v_tt">
			<h2>회원가입</h2>
		</div>
		<!--//content 타이틀 -->
		<!--content 회원정보입력 -->
		<div class="join03_tt">
			<span class="join03_tt01"><img src="./img/join03_timg.gif" alt="가입완료" /></span> 
			<span class="join03_tt02"><img src="./img/join01_txt.gif" alt="PshoppingMall 회원이 되신것을 진심으로 축하드립니다." /></span>
		</div>
		<div class="join01_con">
			<div class="join02_sctt">
				<span class="join02_stt01"><img	src="./img/join03_stt01.gif" alt="개인정보입력" /></span> 
				<span class="join02_stt02">고객님이 입력하신 회원정보입니다.</span>
			</div>
			<div class="join02_form01">
				<table border="1" cellspacing="0" cellpadding="0"
					class="join02_form02">
					<colgroup>
						<col width="117px">
						<col width="">
					</colgroup>
					<tr class="join02_tr" class="join02_tr">
						<th class="join02_left01"><b>*</b> 아이디</th>
						<td class="join03_right"><%=id%> <em>* 아이디는 변경하실 수 없습니다.</em>
						</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> 비밀번호</th>
						<td class="join03_right"><%=pw%></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> 이름</th>
						<td class="join03_right"><%=name%></td>
					</tr>
<!-- 					<tr class="join02_tr">
						<th class="join02_left02">주민등록번호</th>
						<td class="join03_right">785555 - 2******</td>
					</tr> -->
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> 전화번호</th>
						<td class="join03_right"><%=tel%></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">휴대폰번호</th>
						<td class="join03_right"><%=cell%></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">이메일</th>
						<td class="join03_right"><%=email%>
							<em>* 이벤트,	경매, 특별판매 등 다양한 정보에 대한 메일링 
								<input type="radio"	class="join02_radio" checked>예
							</em>
						</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> 주소</th>
						<td class="join03_right"><%=zipcode%> <%=addr%> <%=detailaddr%></td>
					</tr>
<!-- 					<tr class="join02_tr">
						<th class="join02_left02">소속회사명</th>
						<td class="join03_right">피쇼핑</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">담당부서/지점</th>
						<td class="join03_right">디자인팀 / 서울</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">직위</th>
						<td class="join03_right">대리</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">회사전화번호</th>
						<td class="join03_right">02 - 123 - 4567</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">회사팩스번호</th>
						<td class="join03_right">02 - 123 - 4567</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">추천인</th>
						<td class="join03_right">scars78</td>
					</tr> -->
				</table>
			</div>
		</div>
		<div class="join01_btn">
			<span class="join01_btn01"><a href="#"><img	src="./img/join03_btn_ok.gif" alt="확인" style="margin-bottom:50px"/></a></span>
		</div>
	</div>
	<!--//content 회원정보입력 -->
</div>
<!--//content -->
