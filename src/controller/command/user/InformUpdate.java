package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beansdao.UserDao;

import controller.command.CommandHandler;

public class InformUpdate implements CommandHandler {

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("euc-kr");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String cell = request.getParameter("cell");
		String zipcode = request.getParameter("zipcode");
		String addr = request.getParameter("addr");
		String detailaddr = request.getParameter("detailaddr");
		String email = request.getParameter("email");
		System.out.println(name + pw + tel + cell + zipcode + addr + detailaddr + email);
		
		
		new UserDao().update(name, pw, tel, cell, zipcode, addr, detailaddr, email);
		return "m_mypage_view.tiles";
	}
}