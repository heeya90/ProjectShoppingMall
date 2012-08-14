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
		//1.명령어와 관련된 비즈니스 로직 처리
		UserDao dao= new UserDao();

		//String email = request.getParameter("email");
		System.out.println("파인드 아이디"+id);
		System.out.println("파인드 이름"+name);
		System.out.println("파인드 이메일"+email);
		String arruse = null;
		if(id==""){
			arruse = dao.findidpw(name, email);	
		}else{
			arruse = dao.findidpw(id, name, email);
		}
		//2.뷰 페이지에서 사용할 정보 저장		

		request.setAttribute("result", arruse);
		
		//3.뷰 페이지의 URI 리턴
		return "./user/user_findid_return.jsp";
	}
}
