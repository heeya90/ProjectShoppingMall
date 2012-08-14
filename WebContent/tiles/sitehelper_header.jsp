<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
    <div id="header">
        <div class="top1">
            <div class="admin_tleft">
                <select name="sel" class="admin_select">
                    <option value="g_name">상품명+코드</option>
                    <option value="info9">상품코드2</option>
                    <option value="man">등록자</option>
                    <option value="userid">등록자 ID</option>
                    <option value="com_code">매입처코드</option>
                    <option value="content">상품설명</option>
                </select>
                <input type="text" name="topSearch" class="input_box" />
                <a href="#" id="topSearchGo">
        <img src="./img/admin_btn_tsearch.gif" alt="검색" /></a>
            </div>
            <div class="admin_tright">
                <span class="admin_ttxt">
                            관리자 <b>${ sessionScope.admin }</b>님 <br />마지막 접속 : ${ sessionScope.lastLogin }</span>
                <span class="admin_btn_logout">
                    <a href="logout.do" id="logout">
        <img src="./img/admin_btn_logout.gif" alt="로그아웃" /></a>
                </span>
            </div>
        </div>
        <div class="top2">
            <ul class="top2_ul">
                <li class="pointer" id="main/index">
                    <a href="../index.jsp">HOME</a>
                </li>
                <li class="pointer" id="user/list">
                    <a href="user_list.tiles">회원관리</a>
                </li>
                <li class="pointer" id="order/jumun_list">
                    <a href="order_list.tiles">주문관리</a>
                </li>
                <li class="pointer" id="product/companyList">
                    <a href="goods_insert.tiles">상품관리</a>
                </li>
                <li class="pointer" id="product/companyList">
                    <a href="category_insert.tiles">카테고리</a>
                </li>
                <!--li class="pointer" id="shopData/shopData"><a href="#">B2C SHOP</a></li-->
                <!-- <li class="pointer" id="board/notice"><a href="#">게시판관리</a></li>
             <li class="pointer" id="shopData/shopData"><a href="#">업무관리</a></li>
             <li class="pointer" id="shopData/shopData"><a href="#">기초관리</a></li>
             <li class="pointer" id="set/shopList"><a href="#">환경설정</a></li>
             <li class="pointer" id="stats/counter"><a href="#">통계</a></li> -->
            </ul>
        </div>
    </div>