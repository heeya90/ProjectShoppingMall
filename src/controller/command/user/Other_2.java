package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.command.CommandHandler;

public class Other_2 implements CommandHandler{
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
	
		
		
		return "m_other_2.tiles";
	}
}
