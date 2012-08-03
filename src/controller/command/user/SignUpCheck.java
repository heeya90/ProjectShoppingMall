package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beansdao.UserDao;
import controller.command.CommandHandler;

public class SignUpCheck implements CommandHandler{

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		//1.명령어와 관련된 비즈니스 로직 처리
		String id = request.getParameter("id");

		System.out.println("getParameter id:"+id);
		int result = new UserDao().idDup(id);
		
		//2.뷰 페이지에서 사용할 정보 저장
		request.setAttribute("result", result);
		//3.뷰 페이지의 URI 리턴
		return "./user/ajax/SignUpCheck.jsp";
	}

}
