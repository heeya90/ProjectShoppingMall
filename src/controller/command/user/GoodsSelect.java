package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.command.CommandHandler;

public class GoodsSelect implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		//1.명령어와 관련된 비즈니스 로직 처리
		
		//2.뷰 페이지에서 사용할 정보 저장
		
		//3.뷰 페이지의 URI 리턴
		return "./goods/goods_list_return.jsp";
	}
}
