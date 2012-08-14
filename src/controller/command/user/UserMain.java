package controller.command.user;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.Category2Bean;
import model.beans.GoodsBean;
import model.beansdao.Category_2DAO;
import model.beansdao.UserGoodsDao;
import controller.command.CommandHandler;

public class UserMain implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		//ī�װ� 2 ����Ʈ ��������
		Category_2DAO catdao = new Category_2DAO();
		ArrayList<Category2Bean> arrcat = catdao.select(); 
		
		//������ ��õ��ǰ �Ǹ� �α��ǰ ��������
		UserGoodsDao dao= new UserGoodsDao();		
		ArrayList<GoodsBean> arrgood1s = dao.getrecommandgoodsList();
		ArrayList<GoodsBean> arrgood2s = dao.getbestgoodsList();
		
		//2.�� ���������� ����� ���� ����
		//ī�װ� 2 ����Ʈ ��������
		String category2list ="";
		for(Category2Bean c2b : arrcat){
			category2list +="<li class='firstChild'>";
			category2list +=c2b.getName();
			category2list +="</li>";
		}
		
		//������ ��õ��ǰ ��������
		
		String goods1="";
		for(GoodsBean g1b : arrgood1s){
			goods1 +="<tr>";
			goods1 +="<td>"+"��ǰ�̹���"+"</td>";
			goods1 +="<td>"+g1b.getCode()+"</td>";
			goods1 +="<td>"+g1b.getName()+"</td>";
			goods1 +="<td>"+g1b.getPrice()+" ��"+"</td>";
			goods1 +="<td>"+g1b.getCompany()+"</td>";
			goods1 +="<td>"+g1b.getRegion()+"</td>";
			goods1 +="</tr>";
		}

		String goods2="";
		for(GoodsBean g2b : arrgood2s){
			goods2 +="<tr>";
			goods2 +="<td>"+"��ǰ�̹���"+"</td>";
			goods2 +="<td>"+g2b.getCode()+"</td>";
			goods2 +="<td>"+g2b.getName()+"</td>";
			goods2 +="<td>"+g2b.getPrice()+"</td>";
			goods2 +="<td>"+g2b.getCompany()+"</td>";
			goods2 +="<td>"+g2b.getRegion()+"</td>";
			goods2+="</tr>";
		}
		
		request.setAttribute("category2list", category2list);
		request.setAttribute("goods1", goods1);
		request.setAttribute("goods2", goods2);
		
		//3.�� �������� URI ����
		return "no_user_main.tiles";
	}
}
