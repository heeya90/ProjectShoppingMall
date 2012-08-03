package controller.command.helper;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.beans.UserBean;
import model.beansdao.UserListDAO;
import controller.command.CommandHandler;

public class UserList implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {

		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		UserListDAO dao= new UserListDAO();
		ArrayList<UserBean> arruse = dao.select();	
		
		//2.�� ���������� ����� ���� ����
		String XML =null;
		XML="<? xml version=\"1.0\" encoding=\"UTF-8\" ?>";
		for(UserBean ub : arruse){
			XML+="<tr>";
				XML+="<td>"+ub.getNo()+"</td>";
				XML+="<td>"+ub.getId() +" / "+ub.getPw()+"</td>";
				XML+="<td>"+ub.getName()+"</td>";
				XML+="<td>"+ub.getGrade()+"</td>";
				XML+="<td>"+ub.getPoint()+"</td>";
				XML+="<td>"+ub.getCell()+"</td>";
				XML+="<td>"+ub.getDetailaddr()+"</td>";
				XML+="<td>"+ub.getEmail()+"</td>";
				XML+="<td>"+ub.getRegdate()+"</td>";
			XML+="</tr>";	
		}

		request.setAttribute("xml", XML);

		//3.�� �������� URI ����
		return "./user/user_list_return.jsp";	
	}
}
