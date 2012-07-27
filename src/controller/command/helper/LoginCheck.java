package controller.command.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.HelperBean;
import model.service.HelperService;

import controller.command.CommandHandler;

public class LoginCheck implements CommandHandler{

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		//1.명령어와 관련된 비즈니스 로직 처리
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id+" getParameter "+pw);

		HelperBean hb = new HelperService().login();

		String status=null;

		System.out.println(hb.getId() + "   " +hb.getPw());
		if( id.equals(hb.getId()) && pw.equals(hb.getPw())){
			status = "ok";
		}else{
			if(!id.equals(hb.getId())){
				status = "id";
			}
			if(!pw.equals(hb.getPw())){
				status = "pw";
			}
		}

		//2.뷰 페이지에서 사용할 정보 저장
		System.out.println(status);
		request.setAttribute("status", status);
		//3.뷰 페이지의 URI 리턴
		return "../ajaxreturnpage/LoginCheck.jsp";
	}

}
