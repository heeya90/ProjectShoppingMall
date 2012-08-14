<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript" src="user/js/user_reg2p.js"></script>
<%String id=(String)session.getAttribute("user");
	boolean login = id == null? false:true; %>
<!--content -->
<div id="content">
	<div class="sub_con">
		<!--content 현재위치 -->
		<div class="sub_loca">
			<img src="./img/icon_home.gif" alt="현재위치" />홈 > 회원가입
		</div>
		<!--content 타이틀 -->
		<div class="sub_v_tt">
			<h2>회원가입</h2>
		</div>
		<!--//content 타이틀 -->
		<!--content 회원정보입력 -->
		<form action="UserSuccess.do" method="post" name="frm">
		<div class="join01_tt">
			<span class="join01_tt01"><img src="./img/join02_timg.gif" alt="정보입력" /></span> 
			<span class="join01_tt02"><img src="./img/join01_txt.gif" alt="회원가입은 무료이며,회원약관을 꼭 읽고 숙지하시기 바랍니다." /></span>
		</div>
		<div class="join01_con">
			<div class="join02_sctt">
				<span class="join02_stt01"><img	src="./img/join02_stt01.gif" alt="개인정보입력" /></span> 
				<span class="join02_stt02"><b>*</b> 는 필수 정보입력 항목입니다.</span>
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
						<td class="join02_right"><input class="join02_id" id="id" name="userid" type="text" value="" /><span>
								<!--a href="#"><img src="../images/member/btn_idok.gif" alt="아이디중복확인" /></a-->
								4~10자의 영문과 숫자의 조합 <em>* 회원아이디는 가입 후 변경하실 수 없으니 신중하게 선택하십시오.</em>
						</span></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> 비밀번호</th>
						<td class="join02_right">
							<input class="join02_pw" id="pw" name="pwd1" type="password" />
						</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> 비밀번호확인</th>
						<td class="join02_right">
							<input class="join02_pw" id="rpw" name="pwd2" type="password" />
						</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> 이름</th>	
						<td class="join02_right">
							<input class="join02_id" id="name" name="username" type="text" />
						</td>
					</tr>
					<!-- <tr class="join02_tr">
						<th class="join02_left02">주민등록번호</th>
						<td class="join02_right"><input class="join02_ssnum"
							name="jumin1" type="text" /> - <input class="join02_ssnum"
							name="jumin2" type="text" /></td>
					</tr> -->
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> 전화번호</th>
						<td class="join02_right"><select class="join02_num_sel"	name="phone1">
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
						</select> - <input class="join02_num01" name="phone2" type="text" /> - <input
							class="join02_num02" name="phone3" type="text" /></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">휴대폰번호</th>
						<td class="join02_right"><select class="join02_num_sel"
							name="mobile1">
								<option value="">선택</option>
								<option value='010'>010</option>
								<option value='011'>011</option>
								<option value='016'>016</option>
								<option value='017'>017</option>
								<option value='018'>018</option>
								<option value='019'>019</option>
								<option value='0130'>0130</option>
						</select> - <input class="join02_num01" name="mobile2" type="text" /> -
							<input class="join02_num02" name="mobile3" type="text" /></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> 이메일</th>
						<td class="join02_right"><input class="join02_mail"	id="email" name="email" type="text" />
						 <em>* 이벤트, 경매, 특별판매 등 다양한 정보에 대한 메일을 받아보시겠습니까? 
						 	<label><input type="radio" class="join02_radio" name="emailRecive" value="Y" checked="checked">예</label> 
							<label><input type="radio" class="join02_radio" name="emailRecive" value="N" />아니오</label>
						</em></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left01"><b>*</b> 주소</th>
						<td class="join02_right">
							<span id="zip1" style="display: none;">zipcode</span> 
							<span id="zip2"	style="display: none;">juso1</span> 
							<input class="join02_add01"	name="zipcode" id="zipcode" type="text" />
							<a href="#"><img src="./img/btn_address.gif" alt="우편번호찾기"	id="zipcode_popup" /></a> 
							<input class="join02_add02" name="juso1" id="juso1" type="text" /> 
							<input class="join02_add02"	name="juso2" type="text" /> 나머지 주소를 입력하세요. 
							<em>* 주소(기본배송지)는 구입하신 상품이나 이벤트 경품 등의 배송시 사용되므로 정확하게 입력해 주세요.</em>
						</td>
					</tr>
					<!-- <tr class="join02_tr">
						<th class="join02_left02">소속회사명</th>
						<td class="join02_right"><input class="join02_id"
							name="company" type="text" /></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">담당부서/지점</th>
						<td class="join02_right"><input class="join02_id" name="part"
							type="text" /></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">직위</th>
						<td class="join02_right"><input class="join02_id"
							name="position" type="text" /></td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">회사전화번호</th>
						<td class="join02_right"><select class="join02_num_sel"
							name="com_phone1">
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
						</select> - <input class="join02_num01" name="com_phone2" type="text" />
							- <input class="join02_num02" name="com_phone3" type="text" />
						</td>
					</tr>
					<tr class="join02_tr">
						<th class="join02_left02">회사팩스번호</th>
						<td class="join02_right"><select class="join02_num_sel"
							name="fax1">
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
						</select> - <input class="join02_num01" name="fax2" type="text" /> - <input
							class="join02_num02" name="fax3" type="text" /></td>
					</tr> 
					<tr class="join02_tr">
						<th class="join02_left02">추천인</th>
						<td class="join02_right"><input class="join02_id"
							name="recom_id" type="text" /></td>
					</tr> -->
				</table>
			</div>
		</div>
		</form>
		<div class="join01_btn">
			<span class="join01_btn01" id="button"><a href="#">
				<img src="./img/join02_btn_join.gif" alt="가입" style="margin-bottom:50px"/></a>
			</span>
		</div>
	</div>
	<!--//content 회원정보입력 -->
</div>
<!--//content -->
