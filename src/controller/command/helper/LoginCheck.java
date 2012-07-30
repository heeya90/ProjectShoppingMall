package controller.command.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.beans.HelperBean;
import model.service.HelperService;
import controller.command.CommandHandler;

public class LoginCheck implements CommandHandler{

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		HelperBean helperBean = new HelperService().login();

		String status=null;
		System.out.println("getParameter id:"+id);
		System.out.println("getParameter pw:"+pw);
		System.out.println("helperBean.getId:"+helperBean.getId());
		System.out.println("helperBean.getPw:"+helperBean.getPw());
		if( id.equals(helperBean.getId()) && pw.equals(helperBean.getPw())){
			status = "ok";
		}else{
			if(!id.equals(helperBean.getId())){
				status = "id";
			}
			if(!pw.equals(helperBean.getPw())){
				status = "pw";
			}
		}

		//2.�� ���������� ����� ���� ����
		System.out.println("status(ok, id, pw):"+status);
		request.setAttribute("status", status);
		HttpSession session = request.getSession();
		session.setAttribute("ADMINID", "admin");
		session.setMaxInactiveInterval(60*30);// ���� ���޽ð�(������ �������κ��� 30��)
		//3.�� �������� URI ����
		return "../common/ajaxreturn/sitehelper_login_return.jsp";
	}

}
