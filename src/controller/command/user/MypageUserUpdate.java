package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beansdao.UserDao;

import controller.command.CommandHandler;

public class MypageUserUpdate implements CommandHandler {

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("euc-kr");
		String id=(String)request.getSession().getAttribute("user");
		String name = request.getParameter("name");
		String pw = request.getParameter("pwd1");
		String tel = request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3");
		String cell = request.getParameter("mobile1")+"-"+request.getParameter("mobile2")+"-"+request.getParameter("mobile3");
		String zipcode = request.getParameter("zipcode");
		String addr = request.getParameter("juso1");
		String detailaddr = request.getParameter("juso2");
		String email = request.getParameter("email");
		
		new UserDao().update(id, name, pw, tel, cell, zipcode, addr, detailaddr, email);
		
		return "MypageUserView.do";
	}
}