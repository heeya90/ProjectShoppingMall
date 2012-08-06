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
		//�з� ��ǰ�ڵ� �̹��� ��ǰ�� ���� ���ް�/�ǸŰ� ��ȸ �����
		String XML="";
		for(GoodsBean gb : arrGoods){
			//�� �����(Ŭ���� ���������� �̵��ϱ� ���� ������
			//XML+="<td>"+gb.getNo()+"</td>";
			
			XML+="<tr>";
			//�з�
			XML+="<td>"+gb.getCategory1();
			XML+="-"+gb.getCategory2()+"</td>";
			
			//��ǰ�ڵ�
			XML+="<td>"+gb.getCode()+"</td>";
			
			//�̹���
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
			//��ǰ��
			XML+="<td>"+gb.getName()+"</td>";
			
			//����(?)
			XML+="<td><select name=\"useType\" value=\""+gb.getUse()+"\" >" +
						"<option value=\"Y\">����</option>" +
						"<option value=\"N\">�̽���</option>" +
						"<option value=\"P\">ǰ��</option>" +
					 "</select>" +
				 "</td>";

			//���ް�/�ǸŰ�
			XML+="<td>"+gb.getPrice()+"<br />";
			XML+=gb.getPrime()+"</td>";
			
			//��ȸ
			XML+="<td>"+gb.getReadcnt()+"</td>";
			
			//�����
			XML+="<td>"+gb.getInputdate()+"</td>";
			XML+="</tr>";
		}
		/*<tr class='trClass'>
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
    </tr>*/
		//request.setCharacterEncoding("EUC-KR");	//�̰��ص� �ѱ۱���
		response.setCharacterEncoding("euc-kr");	//ajax, jQuery�� response ĳ���� ���ڵ��� �ѱ۷� �ؾ� �ѱ��� �ȱ����� 

		request.setAttribute("XML", XML);
		System.out.println(XML);
		
		return "goods/goods_list_return.jsp";
	}

}
