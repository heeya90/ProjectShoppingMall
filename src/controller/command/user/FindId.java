package controller.command.user;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beansdao.UserDao;
import controller.command.CommandHandler;

public class FindId implements CommandHandler{

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		//1.명령어와 관련된 비즈니스 로직 처리
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
		
		//3.뷰 페이지의 URI 리턴
		return "user_findid_return.jsp";
	}

}
