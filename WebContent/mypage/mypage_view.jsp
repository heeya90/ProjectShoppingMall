<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<link href="./common/mypage.css" rel="stylesheet" type="text/css" />
<%String id=(String)session.getAttribute("user"); boolean login = id == null? false:true; %>
<!--content -->
<div id="content">
	<div class="sub_con">
		<!--content 현재위치 -->
		<div class="sub_loca">
			<img src="./img/icon_home.gif" alt="현재위치" />홈 - 마이페이지 - 개인정보보기
		</div>
		<!--content 타이틀 -->
		<div class="sub_v_tt">
			<h2>개인정보보기</h2>
		</div>
		<!--//content 타이틀 -->
		<!--content 마이페이지 -->
		<div class="my_page">
			<div class="my_t_txt">
				<span class="my_stt01_txt">
					<ol>
						<li>구입합계금액이 30만원 이상일 경우 카드 결제시 인터넷뱅킹 공인인증서가 필요합니다.<br>
							만약 공인인증서가 없으실 경우 30만원 이하의 금액으로 나누어 주문해 주시기 바랍니다.
						</li>
						<li>장바구니에 담긴 상품은 최대 15일간 저장되며, 판매가 종료된 상품 및 품절된 상품은 리스트만
							유지됩니다.</li>
						<li>비회원의 경우 장바구니에 담긴 상품은 브라우저 종료 시 자동으로 삭제되오니, 회원가입을 해주시기
							바랍니다.</li>
					</ol>
				</span>
			</div>
			<div class="my_stt02">
				<div class="join01_con">
					<div class="join02_form01">
						<table border="1" class="join02_form02">
							<colgroup>
								<col width="117px">
								<col width="">
							</colgroup>

							<tr class="join02_tr">
								<th class="join02_left01"><b>*</b> 이름</th>
								<td class="join02_right"><%=request.getAttribute("name")%></td>
							</tr>

							<tr class="join02_tr" class="join02_tr">
								<th class="join02_left01"><b>*</b> 아이디</th>
								<td class="join02_right"><label><%= id %></label></td>
							</tr>

							<tr class="join02_tr">
								<th class="join02_left01"><b>*</b> 전화번호</th>
								<td class="join02_right"><label><%=request.getAttribute("tel1")%>-<%=request.getAttribute("tel2")%>-<%=request.getAttribute("tel3")%></label>
								</td>
							</tr>

							<tr class="join02_tr">
								<th class="join02_left02">휴대폰번호</th>
								<td class="join02_right"><label><%=request.getAttribute("cell1")%>-<%=request.getAttribute("cell2")%>-<%=request.getAttribute("cell3")%></label>
								</td>
							</tr>

							<tr class="join02_tr">
								<th class="join02_left01"><b>*</b> 주소</th>
								<td class="join02_right">
								<label><%=request.getAttribute("zipcode")%></label><br>
								<label><%=request.getAttribute("addr")%></label>
								<label><%=request.getAttribute("detailaddr")%></label>
								</td>

							<tr class="join02_tr">
								<th class="join02_left02">이메일</th>
								<td class="join02_right"><label><%=request.getAttribute("email")%></label>
								</td>
							</tr>

						</table>
					</div>
				</div>
				<div class="join01_btn" style="margin-bottom:50px">
				</div>
			</div>
			<!--//content 회원정보입력 -->
		</div>
	</div>
	<!--//content 마이페이지 -->
</div>
<!--//content -->