package controller.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandHandler {	//CommandHandler 인터페이스
	public String process(HttpServletRequest request,
							HttpServletResponse response) throws Throwable;
}