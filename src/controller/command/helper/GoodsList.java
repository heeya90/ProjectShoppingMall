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
		
		String XML="";
		for(GoodsBean gb : arrGoods){
			XML+="<tr>";
			XML+="<td>"+gb.getCategory1();
			XML+="-"+gb.getCategory2()+"</td>";
			XML+="<td>"+gb.getCode()+"</td>";
			//XML+="<td>"+gb.getNo()+"</td>";
			XML+="<td>"+gb.getName()+"</td>";
			for(GoodsImgBean gib : gb.getImg()){
				if(gib==null)
					continue;
				XML+="<td>";
				XML+="<td>"+"<img src=\""+gib.getImage()+"\" /></td>";
				//XML+="<td>"+"<img src=\""+gib.getThumb1()+"\" /></td>";
				//XML+="<td>"+"<img src=\""+gib.getThumb2()+"\" /></td>";
				XML+="</td>";
			}
			XML+="<td>"+gb.getPrice()+"</td>";
			XML+="<td>"+gb.getPrime()+"</td>";
			XML+="<td>"+gb.getReadcnt()+"</td>";
			XML+="<td>"+gb.getInputdate()+"</td>";
			XML+="</tr>";
		}
		//request.setCharacterEncoding("EUC-KR");	//�̰��ص� �ѱ۱���
		response.setCharacterEncoding("euc-kr");	//ajax, jQuery�� response ĳ���� ���ڵ��� �ѱ۷� �ؾ� �ѱ��� �ȱ����� 
		request.setAttribute("XML", XML);
		System.out.println(XML);
		
		return "goods/goods_list_return.jsp";
	}

}