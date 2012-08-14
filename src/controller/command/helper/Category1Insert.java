package controller.command.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.Category1Bean;
import model.beansdao.Category_1DAO;
import controller.command.CommandHandler;

public class Category1Insert implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {

		//1.명령어와 관련된 비즈니스 로직 처리
		//입력 수정을 판단하기 위해 가져온 값(no가 null이면 입력 아니면 수정)
		String catNo = request.getParameter("categoryNo");
		Category1Bean cab = new Category1Bean();
		Category_1DAO c1dao = new Category_1DAO();
		int result;
		if(catNo==null){
			//입력(텍스트 창 입력값을 불러와 저장한다)
			cab.setName(request.getParameter("categoryName"));
			result = c1dao.insert(cab);
		}else{
			//수정(셀렉박스 입력값을 불러와 수정한다)
			cab.setNo(Integer.parseInt(request.getParameter("categoryNo")));
			cab.setName(request.getParameter("categoryName"));
			result = c1dao.update(cab);
		};
			//System.out.println(result);

		//2.뷰 페이지에서 사용할 정보 저장
		//반환한 result 값이 성공이면 0  실패 1
		request.setAttribute("result1", result);		

		//3.뷰 페이지의 URI 리턴
		return "./category/category1_insert_return.jsp";
	}
}