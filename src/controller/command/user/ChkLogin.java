package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.beansdao.UserDao;
import controller.command.CommandHandler;

public class ChkLogin implements CommandHandler{

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		//1.명령어와 관련된 비즈니스 로직 처리
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

		//2.뷰 페이지에서 사용할 정보 저장
		System.out.println("status(ok, id, pw):"+status);
		request.setAttribute("status", status);
		HttpSession session = request.getSession();
		session.setAttribute("user", id);
		session.setMaxInactiveInterval(60*30);// 세션 유휴시간(마지막 접근으로부터 30분)
		//3.뷰 페이지의 URI 리턴
		return "./user/ajax/Login.jsp";
	}

}
