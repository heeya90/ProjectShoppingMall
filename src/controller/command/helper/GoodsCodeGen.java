package controller.command.helper;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beansdao.GoodsDao;
import controller.command.CommandHandler;

public class GoodsCodeGen implements CommandHandler{

	@Override
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		
		String seq = new GoodsDao().getSeq();
		
		Calendar cal = Calendar.getInstance();
		String goodsCode =""+(cal.get(Calendar.YEAR)-2000)	//内靛积己 何盒
							+(cal.get(Calendar.MONTH)+1)
							+cal.get(Calendar.DAY_OF_MONTH)
							+cal.get(Calendar.HOUR_OF_DAY)
							+seq;
		
		request.setAttribute("goodscode", goodsCode);
		
		return "./goods/goods_insert_codegen_return.jsp";
	}
	
}
