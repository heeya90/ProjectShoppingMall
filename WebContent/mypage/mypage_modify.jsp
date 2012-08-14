<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript" src="mypage/js/mypage_modify.js"></script>
<link href="./common/mypage.css" rel="stylesheet" type="text/css" />
<%String id=(String)session.getAttribute("user"); boolean login = id == null? false:true; %>
<% %>
<!--content -->
<div id="content">
	<div class="sub_con">
		<!--content 현재위치 -->
		<div class="sub_loca">
			<img src="./img/icon_home.gif" alt="현재위치" />홈 - 마이페이지 - 개인정보수정
		</div>
		<!--content 타이틀 -->
		<div class="sub_v_tt">
			<h2>개인정보변경</h2>
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
			<form action="MypageUserUpdate.do" method="post" name="frm">
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
								<td class="join02_right"><input class="join02_name" id="name" name="name" type="text" value="<%=request.getAttribute("name")%>"/></td>
							</tr>

							<tr class="join02_tr" class="join02_tr">
								<th class="join02_left01"><b>*</b> 아이디</th>
								<td class="join02_right"><label><%= id %></label></td>
							</tr>

							<tr class="join02_tr">
								<th class="join02_left01"><b>*</b> 비밀번호</th>
								<td class="join02_right"><input class="join02_pw" id="pw" name="pwd1" type="password" value="<%=request.getAttribute("pw")%>"/></td>
							</tr>

							<tr class="join02_tr">
								<th class="join02_left01"><b>*</b> 비밀번호확인</th>
								<td class="join02_right"><input class="join02_pw" id="rpw" name="pwd2" type="password" /></td>
							</tr>

<!-- 							<tr class="join02_tr">
								<th class="join02_left02">주민등록번호</th>
								<td class="join02_right"><input class="join02_ssnum" name="jumin1" type="text" /> - <input class="join02_ssnum"	name="jumin2" type="text" /></td>
							</tr>
 -->
							<tr class="join02_tr">
								<th class="join02_left01"><b>*</b> 전화번호</th>
								<td class="join02_right"><select class="join02_num_sel" id="tel1" name="phone1" >
										<option value="<%=request.getAttribute("tel1")%>"><%=request.getAttribute("tel1")%></option>
										<option value='02'>02</option>
										<option value='031'>031</option>
										<option value='032'>032</option>
										<option value='033'>033</option>
										<option value='041'>041</option>
										<option value='042'>042</option>
										<option value='043'>043</option>
										<option value='051'>051</option>
										<option value='052'>052</option>
										<option value='053'>053</option>
										<option value='054'>054</option>
										<option value='055'>055</option>
										<option value='061'>061</option>
										<option value='062'>062</option>
										<option value='063'>063</option>
										<option value='064'>064</option>
										<option value='010'>010</option>
										<option value='011'>011</option>
										<option value='016'>016</option>
										<option value='017'>017</option>
										<option value='018'>018</option>
										<option value='019'>019</option>
										<option value='0130'>0130</option>
										<option value='080'>080</option>
										<option value='070'>070</option>
										<option value='0502'>0502</option>
										<option value='0504'>0504</option>
										<option value='0505'>0505</option>
										<option value='0506'>0506</option>
										<option value='0303'>0303</option>
								</select> - <input class="join02_num01" id="tel2" name="phone2" type="text" value="<%=request.getAttribute("tel2")%>"/> - <input class="join02_num02" id="tel3" name="phone3" type="text" value="<%=request.getAttribute("tel3")%>"/></td>
							</tr>

							<tr class="join02_tr">
								<th class="join02_left02">휴대폰번호</th>
								<td class="join02_right"><select class="join02_num_sel"	id="cell1" name="mobile1">
										<option value="<%=request.getAttribute("cell1")%>"><%=request.getAttribute("cell1")%></option>
										<option value='010'>010</option>
										<option value='011'>011</option>
										<option value='016'>016</option>
										<option value='017'>017</option>
										<option value='018'>018</option>
										<option value='019'>019</option>
										<option value='0130'>0130</option>
								</select> - <input class="join02_num01" id="cell2" name="mobile2" type="text" value="<%=request.getAttribute("cell2")%>"/> - <input class="join02_num02" id="cell3" name="mobile3" type="text" value="<%=request.getAttribute("cell3")%>"/>
								</td>
							</tr>

							<tr class="join02_tr">
								<th class="join02_left01"><b>*</b> 주소</th>
								<td class="join02_right">
									<span id="zip1"style="display: none;" id="zipcode">zipcode</span> 
									<span id="zip2"	style="display: none;">juso1</span> 
									<input class="join02_add01"	name="zipcode" type="text" id="zipcode" value="<%=request.getAttribute("zipcode")%>"/>
									<a href="#"><img src="./img/btn_address.gif" alt="우편번호찾기"	id="zipcode_popup" /></a>
									<input class="join02_add02"	id="addr" name="juso1" type="text" id="juso1" value="<%=request.getAttribute("addr")%>"/> 
									<input class="join02_add02" id="detailaddr" name="juso2" type="text" value="<%=request.getAttribute("detailaddr")%>"/> 나머지 주소를 입력하세요. 
									<em>* 주소(기본배송지)는 구입하신 상품이나 이벤트 경품 등의 배송시 사용되므로 정확하게 입력해 주세요.</em>
								</td>

							<tr class="join02_tr">
								<th class="join02_left02">이메일</th>
								<td class="join02_right">
									<input class="join02_mail"	id="email" name="email" type="text" value="<%=request.getAttribute("email")%>"/> <em>* 이벤트, 경매, 특별판매 등 다양한 정보에 대한 메일을 받아보시겠습니까? 
										<label><input type="radio" class="join02_radio" name="emailRecive" value="Y">예</label>
										<label><input type="radio" class="join02_radio"	name="emailRecive" value="N" />아니오</label></em>
								</td>
							</tr>

<!-- 							</tr>
							<tr class="join02_tr">
								<th class="join02_left02">소속회사명</th>
								<td class="join02_right"><input class="join02_id" name="company" type="text" /></td>
							</tr>
							<tr class="join02_tr">
								<th class="join02_left02">담당부서/지점</th>
								<td class="join02_right"><input class="join02_id" name="part" type="text" /></td>
							</tr>
							<tr class="join02_tr">
								<th class="join02_left02">직위</th>
								<td class="join02_right"><input class="join02_id" name="position" type="text" /></td>
							</tr>
							<tr class="join02_tr">
								<th class="join02_left02">회사전화번호</th>
								<td class="join02_right"><select class="join02_num_sel" name="com_phone1">
										<option value="">선택</option>
										<option value='02'>02</option>
										<option value='031'>031</option>
										<option value='032'>032</option>
										<option value='033'>033</option>
										<option value='041'>041</option>
										<option value='042'>042</option>
										<option value='043'>043</option>
										<option value='051'>051</option>
										<option value='052'>052</option>
										<option value='053'>053</option>
										<option value='054'>054</option>
										<option value='055'>055</option>
										<option value='061'>061</option>
										<option value='062'>062</option>
										<option value='063'>063</option>
										<option value='064'>064</option>
										<option value='010'>010</option>
										<option value='011'>011</option>
										<option value='016'>016</option>
										<option value='017'>017</option>
										<option value='018'>018</option>
										<option value='019'>019</option>
										<option value='0130'>0130</option>
										<option value='080'>080</option>
										<option value='070'>070</option>
										<option value='0502'>0502</option>
										<option value='0504'>0504</option>
										<option value='0505'>0505</option>
										<option value='0506'>0506</option>
										<option value='0303'>0303</option>
								</select> - <input class="join02_num01" name="com_phone2" type="text" /> - <input class="join02_num02" name="com_phone3" type="text" />
								</td>
							</tr>
							<tr class="join02_tr">
								<th class="join02_left02">회사팩스번호</th>
								<td class="join02_right"><select class="join02_num_sel" name="fax1">
										<option value="">선택</option>
										<option value='02'>02</option>
										<option value='031'>031</option>
										<option value='032'>032</option>
										<option value='033'>033</option>
										<option value='041'>041</option>
										<option value='042'>042</option>
										<option value='043'>043</option>
										<option value='051'>051</option>
										<option value='052'>052</option>
										<option value='053'>053</option>
										<option value='054'>054</option>
										<option value='055'>055</option>
										<option value='061'>061</option>
										<option value='062'>062</option>
										<option value='063'>063</option>
										<option value='064'>064</option>
										<option value='010'>010</option>
										<option value='011'>011</option>
										<option value='016'>016</option>
										<option value='017'>017</option>
										<option value='018'>018</option>
										<option value='019'>019</option>
										<option value='0130'>0130</option>
										<option value='080'>080</option>
										<option value='070'>070</option>
										<option value='0502'>0502</option>
										<option value='0504'>0504</option>
										<option value='0505'>0505</option>
										<option value='0506'>0506</option>
										<option value='0303'>0303</option>
								</select> - <input class="join02_num01" name="fax2" type="text" /> - <input	class="join02_num02" name="fax3" type="text" /></td>
							</tr> -->
						</table>
					</div>
				</div>
				<div class="join01_btn">
					<span class="join01_btn01" id="button"><a href="#"><img	src="./img/my_btn_mo.gif" alt="변경하기" style="margin-bottom:50px"/></a></span>
				</div>
			</div>
			</form>
			<!--//content 회원정보입력 -->
		</div>
	</div>
	<!--//content 마이페이지 -->
</div>
<!--//content -->