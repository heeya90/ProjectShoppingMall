package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.command.CommandHandler;

public class Other_1 implements CommandHandler{
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
	
		
		
		return "m_other_1.tiles";
	}
}
