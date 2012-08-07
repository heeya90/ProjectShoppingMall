package controller.command.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.beans.GoodsBean;
import model.beansdao.UserGoodsDao;
import controller.command.CommandHandler;

public class UserMain implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		UserGoodsDao dao= new UserGoodsDao();
		ArrayList<GoodsBean> arrgood1s = dao.getrecommandgoodsList();
		ArrayList<GoodsBean> arrgood2s = dao.getbestgoodsList();
		
		//2.�� ���������� ����� ���� ����
		//������ ��õ��ǰ ��������
		String goods1="";
		for(GoodsBean g1b : arrgood1s){
			goods1 +="<tr>";
			goods1 +="<td>"+"��ǰ�̹���"+g1b.getCode()+"</td>";
			goods1 +="<td>"+g1b.getName()+"</td>";
			goods1 +="<td>"+g1b.getPrice()+"</td>";
			goods1 +="<td>"+g1b.getCompany()+"</td>";
			goods1 +="<td>"+g1b.getRegion()+"</td>";
			goods1 +="<td>"+g1b.getSales()+"</td>";
			goods1+="</tr>";
		}
		//�Ǹ� �α��ǰ ��������
		String goods2="";
		for(GoodsBean g2b : arrgood2s){
			goods2 +="<tr>";
			goods2 +="<td>"+"��ǰ�̹���"+g2b.getCode()+"</td>";
			goods2 +="<td>"+g2b.getName()+"</td>";
			goods2 +="<td>"+g2b.getPrice()+"</td>";
			goods2 +="<td>"+g2b.getCompany()+"</td>";
			goods2 +="<td>"+g2b.getRegion()+"</td>";
			goods2 +="<td>"+g2b.getSales()+"</td>";
			goods2+="</tr>";
		}
		request.setAttribute("arrgood1s", goods1);
		request.setAttribute("arrgood2s", goods2);
		
		//3.�� �������� URI ����
		return "no_user_main.tiles";
	}
}