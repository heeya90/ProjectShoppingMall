package controller.command.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.Category2Bean;
import model.beansdao.Category_2DAO;

import controller.command.CommandHandler;

public class Goods_List implements CommandHandler{
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
				System.out.println("나는 리스트야"+request.getParameter("category1no"));
		String cat2No = request.getParameter("category1no");		
		Category_2DAO dao= new Category_2DAO();
		ArrayList<Category2Bean> arrcat2 = dao.select(cat2No);
		
		//2.뷰 페이지에서 사용할 정보 저장
		String category2="";
		for(Category2Bean c2b : arrcat2){			
			category2 +="<span class='left_bd_mu06'><a href='Goods_List.do?category2no=" + c2b.getNo() + "'><span>"+c2b.getName()+"</span>";
		}

		request.setAttribute("category2", category2);	
		
		
		return "m_goods_list.tiles";
	}
}
