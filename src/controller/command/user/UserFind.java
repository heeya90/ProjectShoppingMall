package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.beansdao.UserDao;
import controller.command.CommandHandler;

public class UserFind implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		String id = request.getParameter("user_id");
		String name = request.getParameter("user_name");
		String email = request.getParameter("user_email");
		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		UserDao dao= new UserDao();

		//String email = request.getParameter("email");
		System.out.println("���ε� ���̵�"+id);
		System.out.println("���ε� �̸�"+name);
		System.out.println("���ε� �̸���"+email);
		String arruse = null;
		if(id==""){
			arruse = dao.findidpw(name, email);	
		}else{
			arruse = dao.findidpw(id, name, email);
		}
		//2.�� ���������� ����� ���� ����		

		request.setAttribute("result", arruse);
		
		//3.�� �������� URI ����
		return "./user/user_findid_return.jsp";
	}
}
