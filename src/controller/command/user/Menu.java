package controller.command.user;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.beans.Category2Bean;
import model.beansdao.Category_2DAO;
import controller.command.CommandHandler;

public class Menu implements CommandHandler{
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {

		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		//request.getSession().setAttribute("category2", category1);
		//String cat2No = (String)request.getSession().getAttribute("category1no");
		System.out.println(request.getParameter("category1no"));
		String cat2No = request.getParameter("category1no");
		System.out.println("�ڵ鷯 ��з� ��ȣ��="+request.getParameter("cat2No"));
		Category_2DAO dao= new Category_2DAO();
		ArrayList<Category2Bean> arrcat2 = dao.select(cat2No);
		
		//2.�� ���������� ����� ���� ����
		String category2="";
		for(Category2Bean c2b : arrcat2){			
			category2 +="<span class='left_bd_mu06'><a href='Goods_List.do?category2no=" + c2b.getNo() + "><span>"+c2b.getName()+"</span>";
		}

		request.getSession().setAttribute("category2", category2);
		//3.�� �������� URI ����
		return "./goods/menu.jsp";
	}
}
