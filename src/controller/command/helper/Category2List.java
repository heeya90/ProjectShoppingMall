package controller.command.helper;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.Category2Bean;
import model.beansdao.Category_2DAO;
import controller.command.CommandHandler;

public class Category2List implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {

		//1.명령어와 관련된 비즈니스 로직 처리
		//System.out.println(request.getParameter("category1No"));
		String cat1No = request.getParameter("category1No");
		Category_2DAO dao= new Category_2DAO();
		ArrayList<Category2Bean> arrcat2 = dao.select(cat1No);
		//System.out.println("카테고리 1의 기본키"+cat1No);
		//System.out.println(arrcat2.get(0).getName());
		//2.뷰 페이지에서 사용할 정보 저장
		String XML =null;
		XML="<? xml version=\"1.0\" encoding=\"UTF-8\" ?><data>";
		for(int i=0; i<arrcat2.size();i++){
			XML+="<group>";
			XML+="<item key=no>";
				XML+="<value>"+arrcat2.get(i).getNo()+"</value>";
			XML+="</item>";
			XML+="<item key=name>";			
				XML+="<value>"+arrcat2.get(i).getName()+"</value>";
			XML+="</item>";
			XML+="<item key=orderidx>";
				XML+="<value>"+arrcat2.get(i).getOrderidx()+"</value>";
			XML+="</item>";
			XML+="</group>";
		}
		XML+="</data>";

		request.setAttribute("xml", XML);		

		//3.뷰 페이지의 URI 리턴
		return "./category/category2_list_return.jsp";
	}
}
