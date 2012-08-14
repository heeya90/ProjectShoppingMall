<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
    <!DOCTYPE html>
    <script type="text/javascript" src="goods/js/goods_insert.js"></script>
    <script type="text/javascript" src="../common/jquery.form.js"></script>
    <link href="goods/css/goods_insert.css" rel="stylesheet" type="text/css" />
    <title>관리자모드(상품등록/수정)</title>
    <div id="content">
        <div class="admin_loca">HOME - 상품관리 - <b>상품등록/수정</b></div>
        <div class="admin_title">
            <!-- [<span class="productListTitle"></span>] -->상품 등록</div>
        <div id="productWriteForm">
            <form name="form" id="frm" action="goodsinsert.do" method="post" enctype="multipart/form-data" >
                <input type="hidden" name="com_id" id="com_id" value=">" />
                <table class="boardinput" summary="상품 등록" style="width: 780px;">
                    <tbody>
                        <tr>
                            <td class="td_cen" colspan="4">
                                <span class="action">
                                    <img src="./img/admin_btn_enter.gif" class="clickbutton" id="submitbutton1"
                                    STYLE="type: button; value: 입력" />
                                    <img src="./img/admin_btn_list.gif" class="clickbutton" id="listbutton1"
                                    STYLE="type: button; value: 리스트" />
                                    <img src="./img/admin_btn_del.gif" class="clickbutton" id="deletebutton1"
                                    STYLE="type: button; value: 삭제" />
                                    <img src="./img/admin_btn_zero.gif" class="clickbutton" id="resetbutton1"
                                    STYLE="type: button; value: 초기화" />
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <th class="th_center">상품명</th>
                            <td class="left" colspan="3">
                                <input type="text" class="input_box_txt" name="p_name" id="p_name" value="${ goodsBean.name }" 
                                style="width: 400px;" />
                                <!-- class="inputbox250" -->
                            </td>
                        </tr>
                        <tr>
                            <th class="th_center">상품코드</th>
                            <td class="left">
                                <input type="text" name="p_code" id="p_code" class="input_box_txt" readOnly="readOnly" value="${ goodsBean.code }" />
                                <input type="button" id="codegen" value="코드생성" />
                                <!-- class="optionText" -->
                            </td>
                        </tr>
                        <tr>
                            <th class="th_center">카테고리</th>
                            <td class="left" colspan="4">
                                <div class="categoryBox01">
                                    <div class="categoryGubun01">대분류</div>
                                    <div class="categorySelectBox">
                                        <select name="categoryA" id="categoryA" class="selectBox" size="10"></select>
                                    </div>
                                </div>
                                <div class="categoryBox01">
                                    <div class="categoryGubun01">중분류</div>
                                    <div class="categorySelectBox">
                                        <select name="categoryB" id="categoryB" class="selectBox" size="10"></select>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <!-- <tr>
                            <th class="th_center">검색키워드</th>
                            <td class="left" colspan="3">
                                <input type="text" name="keyword" id="keyword" value="바지" class="input_box_txt"
                                />
                            </td>
                        </tr> -->
                        <!-- <tr>
                            <th class="th_center">옵션</th>
                            <td class="left" colspan="3">
                                <table style="border: 0; cellpadding: 0; cellspacing: 0" class="admin_table03">
                                    <tr>
                                        <th class="th_center">
                                            <input type="text" name="optionText1" id="optionText1" value="color" class="optionText"
                                            />
                                        </th>
                                        <th class="th_center">
                                            <input type="text" name="optionText2" id="optionText2" value="size" class="optionText"
                                            />
                                        </th>
                                        <th class="th_center">
                                            <input type="text" name="optionText3" id="optionText3" value="" class="optionText"
                                            />
                                        </th>
                                        <th class="th_center">
                                            <input type="text" name="optionText4" id="optionText4" value="" class="optionText"
                                            />
                                        </th>
                                        th class="eeeeBg"><input type="text" name="optionText3" id="optionText3" value="" class="optionText" /></th
                                    </tr>
                                    <tr>
                                        <td class="td_cen">
                                            <input type="text" name="optionValue1" id="optionValue1" value="yellow"
                                            class="inputbox" />
                                        </td>
                                        <td class="td_cen">
                                            <input type="text" name="optionValue2" id="optionValue2" value="M" class="inputbox"
                                            />
                                        </td>
                                        <td class="td_cen">
                                            <input type="text" name="optionValue3" id="optionValue3" value="" class="inputbox"
                                            />
                                        </td>
                                        <td class="td_cen">
                                            <input type="text" name="optionValue4" id="optionValue4" value="" class="inputbox"
                                            />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr> -->
                        <tr>
                            <th class="th_center">상품구분</th>
                            <td class="left" colspan="3">
                                <table style="border: 0; cellpadding: 0; cellspacing: 0" class="admin_table03">
                                    <tr>
                                        <th class="th_center">추천상품</th>
                                        <th class="th_center">인기상품</th>
                                    </tr>
                                    <tr>
                                        <td class="td_cen">
                                            <input type="checkbox" name="recommand_product" id="recommand_product"
                                            value="Y" checked="checked" />
                                        </td>
                                        <td class="td_cen">
                                            <input type="checkbox" name="new_product" id="new_product" value="Y" checked="checked"
                                            />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <th class="th_center">판매상태</th>
                            <td class="left" colspan="3">
                                <label>
                                    <input type="radio" name="usetype" value="Y" checked="checked" />판매중</label>
                                <label>
                                    <input type="radio" name="usetype" value="N" />숨김</label>
                                <label>
                                    <input type="radio" name="usetype" value="P" />일시품절</label>
                            </td>
                        </tr>
                        <!-- <tr>
                            <th class="th_center">판매단위</th>
                            <td class="left" colspan="3">
                                <select name="sale_unit" id="sale_unit" class="admin_select_site">
                                    class="inputbox"
                                    <option value="개" selected="selected">개</option>
                                    <option value="SET" selected="selected">SET</option>
                                    <option value="BOX" selected="selected">BOX</option>
                                </select>
                            </td>
                        </tr> -->
                        <tr>
                            <th class="th_center">원산지</th>
                            <td class="left" colspan="3">
                                <span>지역명 입력:</span><input type="text" name="region" value="${ goodsBean.region }" />
                                <!-- <input name="origin_place_radio" type="radio" value="" />
                                <span>원산지미확실</span>
                                <input name="origin_place_radio" type="radio" value="국내산"
                                checked="checked" />
                                <span>국내산</span>
                                <input name="origin_place_radio" type="radio" value="중국산" />
                                <span>중국산</span> -->
                            </td>
                        </tr>
                        <tr>
                            <th class="th_center">회사</th>
                            <td class="left" colspan="3">
                            <span>납품회사명 :</span>
                            <input type="text" name="company" id="company" value="${ goodsBean.company }" />
                            </td>
                        </tr>
                        <tr>
                            <th class="th_center">가격</th>
                            <td class="left" colspan="3">
                                <span>상품원가 :</span>
                                <input type="text" name="prime_price" id="prime_price" value="${ goodsBean.price }"
                                class="inputbox50" />원
                                <div id="B2CPrice">
                                <span>판 매 가 :</span>
                                <input type="text" name="price" id="price" value="${ goodsBean.prime }"
                                class="inputbox50" />원</div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th_center">재고</th>
                            <td class="left" colspan="3">
                                <input type="text" name="inventory" id="inventory" value="${ goodsBean.inventory }" />
                            </td>
                        </tr>
                        <tr>
                            <th class="th_center">이미지</th>
                            <td class="left" colspan="3">
                                <span id="img1">
                                    <input type="file" name="file1" class="inputbox01" />
                                    <img src="/upload/product/" border="0" />&nbsp;
                                    <img src="./img/admin_btn_del.gif" style="type: button" class="clickbutton"
                                    id="delimg1" />
                                </span>
                                <br />
                                <span id="img2">
                                    <input type="file" name="file2" class="inputbox01" />
                                    <img src="/upload/product/" border="0" />&nbsp;
                                    <img src="./img/admin_btn_del.gif" style="type: button" class="clickbutton"
                                    id="delimg2" />
                                </span>
                                <br />
                                <span id="img3">
                                    <input type="file" name="file3" class="inputbox01" />
                                    <img src="/upload/product/" border="0" />&nbsp;
                                    <img src="./img/admin_btn_del.gif" style="type: button" class="clickbutton"
                                    id="delimg3" />
                                </span>
                                <br />
                                <span id="img4">
                                    <input type="file" name="file4" class="inputbox01" />
                                    <img src="/upload/product/" border="0" />&nbsp;
                                    <img src="./img/admin_btn_del.gif" style="type: button" class="clickbutton"
                                    id="delimg4" />
                                </span>
                                <br />
                                <span id="img5">
                                    <input type="file" name="file5" class="inputbox01" />
                                    <img src="/upload/product/" border="0" />&nbsp;
                                    <img src="./img/admin_btn_del.gif" style="type: button" class="clickbutton"
                                    id="delimg5" />
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <th class="th_center">상세설명</th>
                            <td class="left" colspan="3">
                                <div id="contentTab">
                                    <textarea id="prd_content" name="prd_content" style="width: 100%; height: 100px;">${ goodsBean.content }</textarea>
                                </div>
                                <!-- <br />
                                <input type="button" value="이미지첨부" id="imgPluse" name="imgPluse" class="clickbutton01"
                                /> -->
                            </td>
                        </tr>
                        <!-- <tr>
                            <th class="th_center">메모</th>
                            <td class="left" colspan="3">
                                <textarea id="prd_memo" name="prd_memo" class="textarea" style="width: 100%; height: 150px;">메모</textarea>
                            </td>
                        </tr> -->
                        <tr>
                            <td class="td_cen" colspan="4">
                                <span class="action">
                                    <img src="./img/admin_btn_enter.gif" class="clickbutton" id="submitbutton2"
                                    STYLE="type: button; value: 입력" />
                                    <img src="./img/admin_btn_list.gif" class="clickbutton" id="listbutton2"
                                    STYLE="type: button; value: 리스트" />
                                    <img src="./img/admin_btn_del.gif" class="clickbutton" id="deletebutton2"
                                    STYLE="type: button; value: 삭제" />
                                    <img src="./img/admin_btn_zero.gif" class="clickbutton" id="resetbutton2"
                                    STYLE="type: button; value: 초기화" />
                                </span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
