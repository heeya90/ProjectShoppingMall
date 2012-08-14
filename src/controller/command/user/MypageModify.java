package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.beans.UserBean;
import model.beansdao.UserDao;
import controller.command.CommandHandler;

public class MypageModify implements CommandHandler{
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		//1.명령어와 관련된 비즈니스 로직 처리
		String id=(String)request.getSession().getAttribute("user");
		UserDao selectuser = new UserDao();
		UserBean select=selectuser.selectUserUdate(id);

		String name = select.getName();
		String pw = select.getPw();
		String rtel = select.getTel();
		
		String[] tel= rtel.split("-");
		for(int t=0;t<tel.length;t++){
		}
		
		String rcell = select.getCell();

		String[] cell= rcell.split("-");
		for(int t=0;t<cell.length;t++){
		}
		
		String zipcode = select.getZipcode();
		String addr = select.getAddr();
		String detailaddr = select.getDetailaddr();
		String email = select.getEmail();
		
		//2.뷰 페이지에서 사용할 정보 저장
		request.setAttribute("name",name);
		request.setAttribute("pw",pw);
		request.setAttribute("tel1",tel[0]);
		request.setAttribute("tel2",tel[1]);
		request.setAttribute("tel3",tel[2]);
		request.setAttribute("cell1",cell[0]);
		request.setAttribute("cell2",cell[1]);
		request.setAttribute("cell3",cell[2]);
		request.setAttribute("zipcode",zipcode);
		request.setAttribute("addr",addr);
		request.setAttribute("detailaddr",detailaddr);
		request.setAttribute("email",email);

		//3.뷰 페이지의 URI 리턴
		return "m_mypage_modify.tiles";
	}
}
