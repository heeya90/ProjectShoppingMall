<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="goods/js/goods_list.js"></script>
    <title>�����ڸ��(��ǰ����)</title>
    <div id="content">
        <div class="admin_loca">HOME - ��ǰ���� - <B>��ǰ����Ʈ</B>
        </div>
        <div class="admin_title"></div>
        <!-- <form name="frmMove" method="post">
            <input type="hidden" name="sKey" id="sKey" value="" />
            <input type="hidden" name="sType" id="sType" value="" />
            <input type="hidden" name="com_type" id="com_type" value="" />
            <input type="hidden" name="sort" id="sort" value="" />
            <input type="hidden" name="com_id" id="com_id" value="" />
            <input type="hidden" name="productKey" id="productKey" value="" />
            <input type="hidden" name="nPage" id="nPage" value="" />
            <input type="hidden" name="pPage" id="pPage" value="" />
            <input type="hidden" name="com_category" id="com_category" value="" />
            <input type="hidden" name="p_code" id="p_code" value="" />
        </form> -->
        <div id="productListForm">
            <div class="categoryGubun">��ϻ�ǰ :
                <span id="nTotal">${ totalGoods }</span>��
                <input type="button" class="clickbutton02" id="allcategory" value="��ü����" />
            </div>
            <div class="categoryBox">
                <div class="categoryGubun">��з�</div>
                <div class="categorySelectBox">
                    <select name="categoryA" id="categoryA" class="selectBox" size="10"></select>
                    <input type="hidden" value="" />
                </div>
            </div>
            <div class="categoryBox">
                <div class="categoryGubun">�ߺз�</div>
                <div class="categorySelectBox">
                    <select name="categoryB" id="categoryB" class="selectBox" size="10"></select>
                    <input type="hidden" value="" />
                </div>
            </div>
            <div style="clear: both;"></div>
            <div style="width: 780px; text-align: center; padding-top: 10px;">
                <input type="button" name="productGo" value=" ��ǰ��� " class="clickbutton01"
                />
                <input type="button" name="allUpdate" value=" ��ü ���� " class="clickbutton01"
                />
            </div>
            <div class="admin_tsearch">
                <!--div class="topSort" style="text-align:center;"-->
                <span class="productListTitle"></span>
                <select name="pType" id="pType" class="selectBox" style="width: 100px;">
                    <option value="p_name" selected="selected">��ǰ��</option>
                    <option value="p_code" selected="selected">��ǰ�ڵ�</option>
                </select>
                <input type="text" class="inputbox" name="pKey" id="pKey" style="width: 100px;"
                value="" />
                <select name="sYear" id="sYear" class="selectBox" style="width: 55px;"></select>
                <input type="hidden" value="" />
                <select name="sMonth" id="sMonth" class="selectBox" style="width: 55px;"></select>
                <input type="hidden" value="" />
                <select name="sDay" id="sDay" class="selectBox" style="width: 55px;"></select>
                <input type="hidden" value="" />~
                <select name="eYear" id="eYear" class="selectBox" style="width: 55px;"></select>
                <input type="hidden" value="" />
                <select name="eMonth" id="eMonth" class="selectBox" style="width: 55px;"></select>
                <input type="hidden" value="" />
                <select name="eDay" id="eDay" class="selectBox" style="width: 55px;"></select>
                <input type="hidden" value="" />
                <select name="pPageSize" class="selectBox" style="width: 50px;">
                    <option value="20" selected="selected">20��</option>
                    <option value="50" selected="selected">50��</option>
                    <option value="100" selected="selected">100��</option>
                    <option value="200" selected="selected">200��</option>
                </select>
                <input type="button" name="searchButton" id="searchButton" value="�� ��"
                class="clickbutton02" />
            </div>
            <div class="admin_arr_cen">
                <span class="admin_arr01">
                    <!--label><input type="radio" name="productSort" value="inputday_asc" />��ϼ���</label-->
                    <label>
                        <input type="radio" name="productSort" value="categoryC_asc" />ī�װ���</label>
                    <!--label><input type="radio" name="productSort" value="price1_asc" />���ݼ���</label-->
                    <!--label><input type="radio" name="productSort" value="orderCont_asc" />�����</label-->
                    <!--label><input type="radio" name="productSort" value="priceUpdateDay_asc" />�ܰ�������</label-->
                    <label>
                        <input type="radio" name="productSort" value="inputday_desc" checked="checked"
                        />��ϼ���</label>
                    <label>
                        <input type="radio" name="productSort" value="categoryC_desc" />ī�װ���</label>
                    <label>
                        <input type="radio" name="productSort" value="price1_desc" />���ݼ���</label>
                    <label>
                        <input type="radio" name="productSort" value="readCnt_desc" />��ȸ����</label>
                </span>
            </div>
            <table summary="��ǰ ����Ʈ" class="admin_table00">
                <!-- class="boardlist"-->
                <thead>
                    <tr>
                        <th class="th_center">�з�</th>
                        <th class="th_center">��ǰ�ڵ�</th>
                        <th class="th_center">�̹���</th>
                        <th class="th_center">��ǰ��</th>
                        <th class="th_center">����</th>
                        <th class="th_center">���ް�<br />�ǸŰ�</th>
                        <th class="th_center">��ȸ��</th>
                        <th class="th_center">�����</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="goods" items="${arrGoods}" >
                    <tr>
                        <td>${ goods.category1 }-${ goods.category2 }</td>
                        <td><a href="#" class="p_code" >${ goods.code }</a></td>
                        <td><img src="${pageContext.request.contextPath}">
                                 ${pageContext.request.contextPath}</td>
                        <td><input type="text" name="p_name" value="${ goods.name }" /></td>
                        <td>${ goods.use }</td>
                        <td><input type="text" name="p_price" value="${ goods.price }" /><br />
                            <input type="text" name="p_prime" value="${ goods.prime }" /></td>
                        <td>${ goods.readcnt }</td>
                        <td>${ goods.inputdate }</td>
                    </tr>
                </c:forEach>
                    <!-- <tr class='trClass'>
                        <td><input type="checkbox" name="" class="" value="" /></td>
                        <td style="text-align: left;">
                            <span class='category_map_list'></span>
                        </td>
                        <td>
                            <span class='product_img_list'>��ǰ�ڵ�</span>
                        </td>
                        <td>
                            <span class='product_img_list'></span>
                        </td>
                        <td class="left" style="width: 150px; word-break: break-all;">[
                            <span class="p_code_list"></span>]
                            <br />
                            <span class='pointer'>
                                <span class='p_name_list'></span>
                            </span>
                            <br />
                            <span class="optionYN_list"></span>
                        </td>
                        <td>
                            <select class="admin_select_year" name="useType">
                                <option value="Y">����</option>
                                <option value="N">�̽���</option>
                                <option value="P">ǰ��</option>
                            </select>
                            <br />
                            <input type="button" name="codeplus" value="�ڵ��߰�" class="clickbutton09"
                            />
                        </td>
                        <td>
                            <span class="prime_price_list"></span>
                            <br />
                            <span class="price_list"></span>
                        </td>
                        <td>
                            <input type="text" name="readCnt" class="readCnt_list" value="{{readCnt}}"
                            />
                            <input type="hidden" name="p_code_list" value="{{p_code}}" />
                        </td>
                        <td>
                            <span class='datetime_list'></span>
                        </td>
                    </tr> -->
                </tbody>
                <tfoot>
                    <tr>
                        <td class="td_cen" colspan="8" id="pageing"></td>
                    </tr>
                </tfoot>
            </table>
            <div style="width: 780px; text-align: center; padding-top: 10px;">
                <input type="button" name="companyListGo" value=" ���Ծ�ü ����Ʈ " class="clickbutton01"
                />
                <input type="button" name="productGo" value=" ��ǰ��� " class="clickbutton01"
                />
                <input type="button" name="allUpdate" value=" ��ü ���� " class="clickbutton01"
                />
            </div>
        </div>
    </div>
