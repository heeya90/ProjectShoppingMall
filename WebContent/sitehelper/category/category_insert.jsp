<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>관리자모드(카테고리)</title>

<div id="sub_contents">
	<div id="content">
		<div class="admin_loca"> HOME - 상품관리 - <b>카테고리관리</b>
		</div>
		<div class="admin_title">카테고리 리스트</div>

		<div style="padding-left: 50px; margin: 0 auto; text-align: center">
			<div class="categoryBox01">
				<div class="categoryGubun01">대분류</div>
				<div class="categorySelectBox" style="padding-left: 20px; float: left">
					<select name="categoryA" id="categoryA" class="selectBox" size="16"></select>
				</div>

				<div class="categoryMove" style="padding-right: 10px; float: left">
					<span class="pointer" id="upA">▲</span><br>
					<span class="pointer" id="downA">▼</span>
				</div>
				<div class="categorySet" style="clear: both;">
					<input type="text" id="categoryName" class="inputbox" /><br />
					<input type="button" class="clickbutton03" id="newbutton" value="등록" />
					<input type="button" class="clickbutton06" id="updatebutton" value="수정" />
					<input type="button" class="clickbutton05" id="deletebutton" value="삭제" />
				</div>
				<input type="hidden" id="group" value="A" />
			</div>

			<div class="categoryBox01">
				<div class="categoryGubun01">중분류</div>
				<div class="categorySelectBox" style="padding-left: 20px; float: left">
					<select name="categoryB" id="categoryB" class="selectBox" size="16"></select>
				</div>
				<div class="categoryMove" style="padding-right: 10px; float: left">
					<span class="pointer" id="upB">▲</span><br>
					<span class="pointer" id="downB">▼</span>
				</div>
				<div class="categorySet" style="clear: both;">
					<input type="text" id="categoryName" class="inputbox" /><br/>
					<input type="button" class="clickbutton03" id="newbutton" value="등록" />
					<input type="button" class="clickbutton06" id="updatebutton" value="수정" />
					<input type="button" class="clickbutton05" id="deletebutton" value="삭제" />
				</div>
				<input type="hidden" id="group" value="B" />
			</div>

		</div>

	</div>
</div>

