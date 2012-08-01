package controller.command.helper;

import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.Category1Bean;
import model.beansdao.Category_1DAO;
import controller.command.CommandHandler;

public class Category1Insert implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {

		//1.명령어와 관련된 비즈니스 로직 처리
		System.out.println("process 메소드");
		String catName = request.getParameter("cat1");
		Category1Bean cab = new Category1Bean();
		cab.setName(request.getParameter("name"));
		System.out.println(catName);
		System.out.println(cab.getName());
		Category_1DAO c1dao = new Category_1DAO();
		int result = c1dao.insert(cab);
		System.out.println(result);
		//c1dao.insert(c1b);//성공이 1 실패 0
		ArrayList<Category1Bean> arrcat1 = c1dao.select();

		//2.뷰 페이지에서 사용할 정보 저장
		for(int i=1; i<arrcat1.size(); i++){
			request.setAttribute("cat1name"+i, arrcat1.get(i).getName());
			request.setAttribute("cat1idx"+i, arrcat1.get(i).getOrderidx());
		}
		
		String XML =null;
		
		XML="<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
			"<category1>";
		for (Category1Bean cb : arrcat1){
			XML+="<name>"+cb.getNo()+"</name>";
			XML+="<orderidx>"+cb.getOrderidx()+"</orderidx>";
		}
		XML+="</category1>";
		/*for(int i=0; i<arrcat1.size() ;i++){
		XML+="<no>"+arrcat1.get(i).getNo()+"</no>";
		XML+="<name>"+arrcat1.get(i).getName()+"</name>";
		XML+="<use>"+arrcat1.get(i).getUse()+"</use>";
		XML+="<orderidx>"+arrcat1.get(i).getOrderidx()+"</orderidx>";
		}*/
		
		
		request.setAttribute("xml", XML);
		
		//3.뷰 페이지의 URI 리턴
		return "../common/ajaxreturn/category1_insert_return.jsp";
	}

}