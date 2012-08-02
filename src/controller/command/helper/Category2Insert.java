package controller.command.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.Category2Bean;
import model.beansdao.Category_2DAO;
import controller.command.CommandHandler;

public class Category2Insert implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {

		//1.명령어와 관련된 비즈니스 로직 처리
		//입력 수정을 판단하기 위해 가져온 값(no가 null이면 입력 아니면 수정)
		String cat1No = request.getParameter("category1No");
		
		String catNo = request.getParameter("categoryNo");
		Category2Bean cab2 = new Category2Bean();
		Category_2DAO c2dao = new Category_2DAO();
		int result;
		if(catNo==null){
			//입력(텍스트 창 입력값을 불러와 저장한다)
			cab2.setName(request.getParameter("categoryName2"));
			result = c2dao.insert(cat1No,cab2);

			}else{
			//수정(셀렉박스 입력값을 불러와 수정한다)
			cab2.setNo(Integer.parseInt(request.getParameter("categoryNo")));
			cab2.setName(request.getParameter("categoryName"));
			result = c2dao.update(cab2);
		};
			//System.out.println(result);

		//2.뷰 페이지에서 사용할 정보 저장
		//반환한 result 값이 성공이면 0  실패 1
			System.out.println(result);
		request.setAttribute("result2", result);		

		//3.뷰 페이지의 URI 리턴
		return "./category/category2_insert_return.jsp";
	}
}