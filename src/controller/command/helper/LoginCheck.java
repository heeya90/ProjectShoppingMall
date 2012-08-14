package controller.command.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.service.HelperService;
import controller.command.CommandHandler;

public class LoginCheck implements CommandHandler{

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		// ������ �α������������� id�� pw�� �޾� �� ���ڿ� ��ü�� ����.
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// �����ڿ� ���� ��� ������ ������ HelperService��ü�� ����
		HelperService helperService = new HelperService();
		// ������������ �޾ƿ� id, pw�� ������ "ok" ����, id�� Ʋ���� "id" ����, pw�� Ʋ���� "pw" ����
		String status = helperService.login(id, pw);
		//2.�� ���������� ����� ���� ����
		// �α��� �������γ� id, pw�� ����� Ʋ�ȴ����� ���� ���°� ����
		request.setAttribute("status", status);
		
		//�α����� �����ߴٸ�(id, pw�� ��� �¾Ҵٸ�)
		if(status.equals("ok")){
			// �������� ������ �α��νð� ����
			String date = helperService.getLastLogin(id);
			// ������ setAttribute�ϱ� ���ؼ� ������Ʈ ��ü���� ������ �޾ƿ´�
			HttpSession session = request.getSession();
			// �α��μ����� ����Ʈ ��ܿ� ����� ���ڿ� : ���ǿ� "admin"�̶� �Ķ���Ϳ� id ����
			session.setAttribute("admin", id);
			session.setMaxInactiveInterval(60*30);// ���� ���޽ð�(������ �������κ��� 30��)
			// ������ �α��νð� ����
			session.setAttribute("lastLogin", date);
		}
		
		//3.�� �������� URI ����
		// AJAX�����̹Ƿ� �ӽ� ������ ����
		return "sitehelper_login_return.jsp";
	}

}
