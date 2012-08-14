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

		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		Category_1DAO dao= new Category_1DAO();
		ArrayList<Category1Bean> arrcat1 = dao.select();		
		
		//2.�� ���������� ����� ���� ����
		String category1="";
		for(Category1Bean c1b : arrcat1){			
			category1 +="<li><a href='Goods_List.do?category1no=" + c1b.getNo() + "' class='menu_01'><span>"+c1b.getName()+"</span></li>";
		}
		
		request.getSession().setAttribute("category1", category1);		

		//3.�� �������� URI ����
		return "./tiles/header1.jsp";
	}
}
