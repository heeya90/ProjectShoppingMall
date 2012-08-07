package controller.command.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.GoodsBean;
import model.beansdao.GoodsDao;
import controller.command.CommandHandler;

public class GoodsUpdate implements CommandHandler{

	@Override
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		String RETURN_PAGE = "goods_insert.tiles";
		String code = request.getParameter("code");
		
		GoodsDao goodsDao = new GoodsDao();
		GoodsBean goodsBean = goodsDao.updateGoods(code);
		
		request.setAttribute("goodsBean", goodsBean);
		
		return RETURN_PAGE;
	}

}
