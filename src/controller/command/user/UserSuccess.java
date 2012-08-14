package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beansdao.UserDao;

import controller.command.CommandHandler;

public class UserSuccess implements CommandHandler {

	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("euc-kr");
		String no = request.getParameter("no");
		String name = request.getParameter("username");
		String id = request.getParameter("userid");
		String pw = request.getParameter("pwd1");
		String tel = request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3");
		String cell = request.getParameter("mobile1")+"-"+request.getParameter("mobile2")+"-"+request.getParameter("mobile3");
		String zipcode = request.getParameter("zipcode");
		String addr = request.getParameter("juso1");
		String detailaddr = request.getParameter("juso2");
		String email = request.getParameter("email");
		String use = request.getParameter("use");
		String point = request.getParameter("point");
		String grade = request.getParameter("grade");
		String logincnt = request.getParameter("logincnt");
		String lastlogin = request.getParameter("lastlogin");
		String regdate = request.getParameter("regdate");
		
		System.out.println(name + id + pw + tel + cell + zipcode + addr + detailaddr + email + use + point + grade +logincnt + lastlogin + regdate);
		if(id.equals(null)){
			  System.out.println(id);
		}else if(pw.equals(null)){
			System.out.println(pw);
		}
		
		new UserDao().insert(no, name, id, pw, tel, cell, zipcode, addr, detailaddr, email, use, point, grade, logincnt, lastlogin, regdate);
		return "no_user_success.tiles";
	}
}