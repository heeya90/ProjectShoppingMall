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


		//1.명령어와 관련된 비즈니스 로직 처리
			//카테고리 1의값을 가져온다
		String cat1No = request.getParameter("category1no");

			//카테고리 1에 대한 메뉴를 불러온다
		Category_2DAO dao = new Category_2DAO();
		ArrayList<Category2Bean> arrcat2 = dao.select(cat1No);

			//카테고리 1에 대한 상품리스트 불러오기
		UserGoodsDao gdao= new UserGoodsDao();
		ArrayList<GoodsBean> arrlist1 = gdao.getcategory1goodsList(cat1No);

		// 2.뷰 페이지에서 사용할 정보 저장
			//카테고리 1에대한 메뉴를 셋팅한다
		String category2 = "";
		for (Category2Bean c2b : arrcat2) {
			category2 += "<span class='left_bd_mu06'><a href='Goods_List.do?category2no="
					+ c2b.getNo() + "'>" + c2b.getName() + "</a></span>";
		}
		request.setAttribute("category2", category2);

			//카테고리 1에 대한 상품리스트를 셋팅한다.
		String category1list="";
		for (GoodsBean l1b : arrlist1){
			category1list +="<tr>";
			category1list +="<td>"+"상품이미지"+"</td>";
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
