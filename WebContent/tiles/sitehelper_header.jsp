<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
    <div id="header">
        <div class="top1">
            <div class="admin_tleft">
                <select name="sel" class="admin_select">
                    <option value="g_name">��ǰ��+�ڵ�</option>
                    <option value="info9">��ǰ�ڵ�2</option>
                    <option value="man">�����</option>
                    <option value="userid">����� ID</option>
                    <option value="com_code">����ó�ڵ�</option>
                    <option value="content">��ǰ����</option>
                </select>
                <input type="text" name="topSearch" class="input_box" />
                <a href="#" id="topSearchGo">
        <img src="./img/admin_btn_tsearch.gif" alt="�˻�" /></a>
            </div>
            <div class="admin_tright">
                <span class="admin_ttxt">
                            ������ <b>${ sessionScope.admin }</b>�� <br />������ ���� : ${ sessionScope.lastLogin }</span>
                <span class="admin_btn_logout">
                    <a href="logout.do" id="logout">
        <img src="./img/admin_btn_logout.gif" alt="�α׾ƿ�" /></a>
                </span>
            </div>
        </div>
        <div class="top2">
            <ul class="top2_ul">
                <li class="pointer" id="main/index">
                    <a href="../index.jsp">HOME</a>
                </li>
                <li class="pointer" id="user/list">
                    <a href="user_list.tiles">ȸ������</a>
                </li>
                <li class="pointer" id="order/jumun_list">
                    <a href="order_list.tiles">�ֹ�����</a>
                </li>
                <li class="pointer" id="product/companyList">
                    <a href="goods_insert.tiles">��ǰ����</a>
                </li>
                <li class="pointer" id="product/companyList">
                    <a href="category_insert.tiles">ī�װ�</a>
                </li>
                <!--li class="pointer" id="shopData/shopData"><a href="#">B2C SHOP</a></li-->
                <!-- <li class="pointer" id="board/notice"><a href="#">�Խ��ǰ���</a></li>
             <li class="pointer" id="shopData/shopData"><a href="#">��������</a></li>
             <li class="pointer" id="shopData/shopData"><a href="#">���ʰ���</a></li>
             <li class="pointer" id="set/shopList"><a href="#">ȯ�漳��</a></li>
             <li class="pointer" id="stats/counter"><a href="#">���</a></li> -->
            </ul>
        </div>
    </div>