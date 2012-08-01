package controller.command.helper;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.GoodsBean;
import model.beansdao.GoodsDao;
import controller.command.CommandHandler;

public class GoodsInsert implements CommandHandler{

	@Override
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		/*Enumeration<String> pNames = request.getParameterNames();
		while(pNames.hasMoreElements()){
			String pName = pNames.nextElement();
			System.out.println(pName);
		}*/
		Map<String, String[]> pMap = request.getParameterMap();
		
		GoodsBean gb = new GoodsBean();
		gb.setCode		(pMap.get("p_code")[0]);
		gb.setCategory1	(3);
		gb.setCategory2	(2);
		gb.setName		(pMap.get("p_name")[0]);
		
		gb.setPrice		(Integer.parseInt(pMap.get("price")[0]));
		gb.setPrime		(Integer.parseInt(pMap.get("prime_price")[0]));
		gb.setCompany	("samsung");
		gb.setRegion	("seoul");
		gb.setContent	("c:/adf.jpg");
		
		gb.setRecommand	(pMap.get("recommand_product")[0]);
		gb.setBest		(pMap.get(	"new_product")[0]);
		gb.setInventory	(10);
		gb.setReadcnt	(0);
		gb.setUse		("Y");
		System.out.println(gb.toString());
		
		GoodsDao gd = new GoodsDao();
		int result = gd.insert(gb);
		if(0==result){
			System.out.println("성공");
			request.setAttribute("isSuccess", "true");
		}else{
			System.out.println("실패");
			request.setAttribute("isSuccess", "false");
		}
		
		return "../common/ajaxreturn/goods_insert_return.jsp";
	}
	
}
