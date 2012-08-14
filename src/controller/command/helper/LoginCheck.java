package controller.command.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.service.HelperService;
import controller.command.CommandHandler;

public class LoginCheck implements CommandHandler{

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		//1.명령어와 관련된 비즈니스 로직 처리
		// 관리자 로그인페이지에서 id와 pw를 받아 각 문자열 객체에 저장.
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 관리자에 대한 모든 로직를 수행할 HelperService객체를 생성
		HelperService helperService = new HelperService();
		// 웹페이지에서 받아온 id, pw가 맞으면 "ok" 리턴, id가 틀리면 "id" 리턴, pw가 틀리면 "pw" 리턴
		String status = helperService.login(id, pw);
		//2.뷰 페이지에서 사용할 정보 저장
		// 로그인 성공여부나 id, pw중 어떤것이 틀렸는지에 대한 상태값 세팅
		request.setAttribute("status", status);
		
		//로그인이 성공했다면(id, pw가 모두 맞았다면)
		if(status.equals("ok")){
			// 관리자의 마지막 로그인시간 갱신
			String date = helperService.getLastLogin(id);
			// 세선에 setAttribute하기 위해서 리퀘스트 객체에서 세션을 받아온다
			HttpSession session = request.getSession();
			// 로그인성공후 사이트 상단에 띄워줄 문자열 : 세션에 "admin"이란 파라미터에 id 세팅
			session.setAttribute("admin", id);
			session.setMaxInactiveInterval(60*30);// 세션 유휴시간(마지막 접근으로부터 30분)
			// 마지막 로그인시간 세팅
			session.setAttribute("lastLogin", date);
		}
		
		//3.뷰 페이지의 URI 리턴
		// AJAX리턴이므로 임시 페이지 리턴
		return "sitehelper_login_return.jsp";
	}

}
