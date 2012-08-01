package controller.command.helper;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.Category1Bean;
import model.service.CategoryService;
import controller.command.CommandHandler;

public class Category1List implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {

		//1.명령어와 관련된 비즈니스 로직 처리
		CategoryService cs = new CategoryService();		
		ArrayList<Category1Bean> arrcat;
		arrcat = cs.List();
		
		//2.뷰 페이지에서 사용할 정보 저장
		String XML =null;
		
		XML="<?xml version=\"1.0\" encoding=\"UTF-8\"?><category1>";
		for(int i=0; i<arrcat.size() ;i++){
			XML+="<no>"+arrcat.get(i).getNo()+"</no>";
			XML+="<name>"+arrcat.get(i).getName()+"</name>";
			XML+="<use>"+arrcat.get(i).getUse()+"</use>";
			XML+="<orderidx>"+arrcat.get(i).getOrderidx()+"</orderidx>";
		}
		XML+="</category1>";
		
		request.setAttribute("xml", XML);		
		
		//3.뷰 페이지의 URI 리턴
		return "../common/ajaxreturn/category1_insert_return.jsp";
	}
}
