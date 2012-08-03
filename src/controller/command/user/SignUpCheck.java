package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beansdao.UserDao;
import controller.command.CommandHandler;

public class SignUpCheck implements CommandHandler{

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		String id = request.getParameter("id");

		System.out.println("getParameter id:"+id);
		int result = new UserDao().idDup(id);
		
		//2.�� ���������� ����� ���� ����
		request.setAttribute("result", result);
		//3.�� �������� URI ����
		return "./user/ajax/SignUpCheck.jsp";
	}

}
