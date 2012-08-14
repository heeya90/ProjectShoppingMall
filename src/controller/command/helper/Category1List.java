package controller.command.helper;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.Category1Bean;
import model.beansdao.Category_1DAO;
import controller.command.CommandHandler;

public class Category1List implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {

		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		Category_1DAO dao= new Category_1DAO();
		ArrayList<Category1Bean> arrcat1 = dao.select();		
		
		//2.�� ���������� ����� ���� ����
		String XML =null;
		XML="<? xml version=\"1.0\" encoding=\"UTF-8\" ?><data>";
		for(int i=0; i<arrcat1.size();i++){
			//XML+=arrcat1.get(i).getName();
			XML+="<group>";
			XML+="<item key=no>";
				XML+="<value>"+arrcat1.get(i).getNo()+"</value>";
			XML+="</item>";
			XML+="<item key=name>";			
				XML+="<value>"+arrcat1.get(i).getName()+"</value>";
			XML+="</item>";
			XML+="<item key=orderidx>";
				XML+="<value>"+arrcat1.get(i).getOrderidx()+"</value>";
			XML+="</item>";
			XML+="</group>";
		}
		XML+="</data>";

		request.setAttribute("xml", XML);		

		//3.�� �������� URI ����
		return "./category/category1_list_return.jsp";
	}
}
