package controller.command.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.Category2Bean;
import model.beans.GoodsBean;
import model.beansdao.Category_2DAO;
import model.beansdao.UserGoodsDao;
import controller.command.CommandHandler;

public class Goods_List implements CommandHandler {
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {


		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
			//ī�װ� 1�ǰ��� �����´�
		String cat1No = request.getParameter("category1no");

			//ī�װ� 1�� ���� �޴��� �ҷ��´�
		Category_2DAO dao = new Category_2DAO();
		ArrayList<Category2Bean> arrcat2 = dao.select(cat1No);

			//ī�װ� 1�� ���� ��ǰ����Ʈ �ҷ�����
		UserGoodsDao gdao= new UserGoodsDao();
		ArrayList<GoodsBean> arrlist1 = gdao.getcategory1goodsList(cat1No);

		// 2.�� ���������� ����� ���� ����
			//ī�װ� 1������ �޴��� �����Ѵ�
		String category2 = "";
		for (Category2Bean c2b : arrcat2) {
			category2 += "<span class='left_bd_mu06'><a href='Goods_List.do?category2no="
					+ c2b.getNo() + "'>" + c2b.getName() + "</a></span>";
		}
		request.setAttribute("category2", category2);

			//ī�װ� 1�� ���� ��ǰ����Ʈ�� �����Ѵ�.
		String category1list="";
		for (GoodsBean l1b : arrlist1){
			category1list +="<tr>";
			category1list +="<td>"+"��ǰ�̹���"+"</td>";
			category1list +="<td>"+l1b.getCode()+"</td>";
			category1list +="<td>"+l1b.getName()+"</td>";
			category1list +="<td>"+l1b.getPrice()+"</td>";
			category1list +="<td>"+l1b.getCompany()+"</td>";
			category1list +="<td>"+l1b.getRegion()+"</td>";
			category1list +="<td>"+l1b.getSales()+"</td>";
			category1list+="</tr>";
		}
		request.setAttribute("category1list",category1list);
		
		
		return "m_goods_list.tiles";
	}
}
