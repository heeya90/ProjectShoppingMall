package controller.command.user;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beansdao.UserDao;
import controller.command.CommandHandler;

public class FindId implements CommandHandler{

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		Enumeration<?> eParam = request.getParameterNames();
		while(eParam.hasMoreElements()){
			System.out.println(eParam.nextElement());
		}
		//String id = request.getParameter("id");
		
		System.out.println("getParameter name:"+name);
		System.out.println("getParameter email:"+email);
		
		int result = new UserDao().findId(name, email);

		String status=null;
		System.out.println("result"+result);
		if( result == 1){
			status = "ok";
		}else{
			status = "no";
		}
		request.setAttribute("status", status);
		
		//3.�� �������� URI ����
		return "user_findid_return.jsp";
	}

}
