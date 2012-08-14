package controller.command.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.UserBean;
import model.beansdao.UserDao;
import controller.command.CommandHandler;

public class FindIdPw implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		//1.명령어와 관련된 비즈니스 로직 처리
		UserDao dao = new UserDao();

		//String email = request.getParameter("email");
		System.out.println("파인드아이디 이름"+id);
		System.out.println("파인드아이디 이름"+name);
		System.out.println("파인드아이디 이메일"+email);
		ArrayList<UserBean> arruse = null;
		if(id==""){
			arruse = dao.findidpw(name, email);
		}else{
			arruse = dao.findidpw(id, name, email);
		}
		//2.뷰 페이지에서 사용할 정보 저장

/*		String XML =null;
		XML="<? xml version=\"1.0\" encoding=\"UTF-8\" ?>";
		
		XML+="<table>";
		for(UserBean ub : arruse){
		
			XML+="<tr>";
			XML+="<td>"+ub.getId() +"</td>";
			XML+="<td>"+ub.getPw() +"</td>";
				
				   
			XML+="</tr>";
		}
		XML+="</table>";
		request.setAttribute("xml", XML);
		*/
		String XML =null;
		XML="<? xml version=\"1.0\" encoding=\"UTF-8\" ?>";
		for(UserBean ub : arruse){
			XML+="<tr>";
				XML+="<td>"+ub.getId() +"</td>";
			XML+="</tr>";	
		}

		request.setAttribute("xml", XML);
		
		//3.뷰 페이지의 URI 리턴
		return "./user/user_findid_return.jsp";
	}
}
