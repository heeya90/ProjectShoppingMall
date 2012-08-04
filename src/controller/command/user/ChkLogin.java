package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.beansdao.UserDao;
import controller.command.CommandHandler;

public class ChkLogin implements CommandHandler{

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		int result = new UserDao().userCheck(id, pw);

		String status=null;
		System.out.println("getParameter id:"+id);
		System.out.println("getParameter pw:"+pw);
		System.out.println("result"+result);
		if( result == 1){
			status = "ok";
		}else{
			status = "no";
		}

		//2.�� ���������� ����� ���� ����
		System.out.println("status(ok, id, pw):"+status);
		request.setAttribute("status", status);
		HttpSession session = request.getSession();
		session.setAttribute("user", id);
		session.setMaxInactiveInterval(60*30);// ���� ���޽ð�(������ �������κ��� 30��)
		//3.�� �������� URI ����
		return "./user/ajax/Login.jsp";
	}

}
