package controller.command.helper;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.GoodsBean;
import model.beans.GoodsImgBean;
import model.beansdao.GoodsDao;
import model.beansdao.GoodsImgDao;
import controller.command.CommandHandler;

public class GoodsList implements CommandHandler {

	@Override
	public String process(HttpServletRequest request,
						  HttpServletResponse response) throws Throwable {
		
		GoodsDao goodsDao = new GoodsDao();
		GoodsImgDao goodsImgDao = new GoodsImgDao();
		ArrayList<GoodsBean> arrGoods = goodsDao.getGoodsList();
		
		for(GoodsBean gb : arrGoods){
			gb.setImg(goodsImgDao.getGoodsImg(gb.getNo()));
		}
		//분류 상품코드 이미지 상품명 승인 공급가/판매가 조회 등록일
		String XML="";
		for(GoodsBean gb : arrGoods){
			//값 숨기기(클릭시 상세페이지로 이동하기 위한 시퀀스
			//XML+="<td>"+gb.getNo()+"</td>";
			
			XML+="<tr>";
			//분류
			XML+="<td>"+gb.getCategory1();
			XML+="-"+gb.getCategory2()+"</td>";
			
			//상품코드
			XML+="<td>"+gb.getCode()+"</td>";
			
			//이미지
			XML+="<td>";
			for(GoodsImgBean gib : gb.getImg()){
				if(gib==null)
					continue;
				//XML+="<img src=\""+gib.getThumb1()+"\" />";
				XML+="<img src=\""+gib.getImage()+"\" />";
				System.out.println(gib.getImage());
				//XML+="<td>"+"<img src=\""+gib.getThumb2()+"\" /></td>";
			}
			XML+="</td>";
			//상품명
			XML+="<td>"+gb.getName()+"</td>";
			
			//승인(?)
			XML+="<td><select name=\"useType\" value=\""+gb.getUse()+"\" >" +
						"<option value=\"Y\">승인</option>" +
						"<option value=\"N\">미승인</option>" +
						"<option value=\"P\">품절</option>" +
					 "</select>" +
				 "</td>";

			//공급가/판매가
			XML+="<td>"+gb.getPrice()+"<br />";
			XML+=gb.getPrime()+"</td>";
			
			//조회
			XML+="<td>"+gb.getReadcnt()+"</td>";
			
			//등록일
			XML+="<td>"+gb.getInputdate()+"</td>";
			XML+="</tr>";
		}
		/*<tr class='trClass'>
        <td><input type="checkbox" name="" class="" value="" /></td>
        <td style="text-align: left;">
            <span class='category_map_list'></span>
        </td>
        <td>
            <span class='product_img_list'>상품코드</span>
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
                <option value="Y">승인</option>
                <option value="N">미승인</option>
                <option value="P">품절</option>
            </select>
            <br />
            <input type="button" name="codeplus" value="코드추가" class="clickbutton09"
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
    </tr>*/
		//request.setCharacterEncoding("EUC-KR");	//이거해도 한글깨짐
		response.setCharacterEncoding("euc-kr");	//ajax, jQuery는 response 캐릭터 인코딩을 한글로 해야 한글이 안깨진다 

		request.setAttribute("XML", XML);
		System.out.println(XML);
		
		return "goods/goods_list_return.jsp";
	}

}
