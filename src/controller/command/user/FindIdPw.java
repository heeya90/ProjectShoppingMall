package controller.command.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.UserBean;
import model.beansdao.UserDao;
import controller.command.CommandHandler;

public class FindIdPw implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		UserDao dao = new UserDao();

		//String email = request.getParameter("email");
		System.out.println("���ε���̵� �̸�"+id);
		System.out.println("���ε���̵� �̸�"+name);
		System.out.println("���ε���̵� �̸���"+email);
		ArrayList<UserBean> arruse = null;
		if(id==""){
			arruse = dao.findidpw(name, email);
		}else{
			arruse = dao.findidpw(id, name, email);
		}
		//2.�� ���������� ����� ���� ����

/*		String XML =null;
		XML="<? xml version=\"1.0\" encoding=\"UTF-8\" ?>";
		
		XML+="<table>";
		for(UserBean ub : arruse){
		
			XML+="<tr>";
			XML+="<td>"+ub.getId() +"</td>";
			XML+="<td>"+ub.getPw() +"</td>";
				
				   
			XML+="</tr>";
		}
		XML+="</table>";
		request.setAttribute("xml", XML);
		*/
		String XML =null;
		XML="<? xml version=\"1.0\" encoding=\"UTF-8\" ?>";
		for(UserBean ub : arruse){
			XML+="<tr>";
				XML+="<td>"+ub.getId() +"</td>";
			XML+="</tr>";	
		}

		request.setAttribute("xml", XML);
		
		//3.�� �������� URI ����
		return "./user/user_findid_return.jsp";
	}
}
