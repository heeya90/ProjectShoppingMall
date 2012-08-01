package controller.command.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beansdao.GoodsDao;
import controller.command.CommandHandler;

public class GoodsCodeGen implements CommandHandler{

	@Override
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		String seq = new GoodsDao().getSeq();
		
		request.setAttribute("seq", seq);
		
		return "../common/ajaxreturn/goodscodegen_return.jsp";
	}
	
}
