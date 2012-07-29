<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<div id="left">
	<div class="left_timg"><!--#include file="../include/logo.asp"--></div>
	
	<div class="left_tmenu">게시판관리
	</div>

	<div class="left2">

	<ul class="left_mu_ul">
		<li class="left_mu_li">게시판
			<ul class="mu_ul">
				<li class="mu_li"><a href="notice.asp?tblName=inner">내부공지사항</a></li>
				<li class="mu_li"><a href="notice.asp?tblName=outer">공지사항</a></li>
			</ul>
		</li>


		<li class="left_mu_li">고객게시판 리스트
			<ul class="mu_ul">
				<li class="mu_li"><a href="upload_list.asp">파일업로드 리스트</a></li>
				<li class="mu_li"><a href="reorder_list.asp">간단주문 리스트</a></li>
				<li class="mu_li"><a href="question_list.asp">문의하기</a></li>
			</ul>
		</li>

	</ul>
	</div>

</div>