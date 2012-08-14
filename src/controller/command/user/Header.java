package controller.command.user;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.beans.Category1Bean;
import model.beansdao.Category_1DAO;
import controller.command.CommandHandler;

public class Header implements CommandHandler{
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {

		//1.명령어와 관련된 비즈니스 로직 처리
		Category_1DAO dao= new Category_1DAO();
		ArrayList<Category1Bean> arrcat1 = dao.select();		
		
		//2.뷰 페이지에서 사용할 정보 저장
		String category1="";
		for(Category1Bean c1b : arrcat1){			
			category1 +="<li><a href='Goods_List.do?category1no=" + c1b.getNo() + "' class='menu_01'><span>"+c1b.getName()+"</span></li>";
		}
		
		request.getSession().setAttribute("category1", category1);		

		//3.뷰 페이지의 URI 리턴
		return "./tiles/header1.jsp";
	}
}
