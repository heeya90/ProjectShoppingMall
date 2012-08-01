package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.command.CommandHandler;
import controller.command.NullHandler;

public class ControllerUsingURI extends HttpServlet {

	// 매핑 정보 저장하고 있는 설정 파일의 경로를 구한다.
	private Map commandHandlerMap = new HashMap();

	public void init(ServletConfig config) throws ServletException {
		String configFile = config.getInitParameter("configFile");
		Properties prop = new Properties();
		FileInputStream fis = null;
		try {// 설정 파일로부터 매핑 정보를 읽어와 Properties 객체에 저장한다.
			String configFilePath = config.getServletContext().getRealPath(
					configFile);
			fis = new FileInputStream(configFilePath);
			prop.load(fis);
		} catch (IOException e) {
			throw new ServletException(e);
		} finally {
			if (fis != null)
				try {
					fis.close();
				} catch (IOException ex) {
				}
		} 
		Iterator keyIter = prop.keySet().iterator();
		while (keyIter.hasNext()) {// Properties 객체에 저장된 매핑 정보를 읽어와 <커맨드,
			// 핸들러인스턴스>매핑정보를 commandHandlerMap 에 저장
			String command = (String) keyIter.next();
			String handlerClassName = prop.getProperty(command);
			try {
				Class handlerClass = Class.forName(handlerClassName);
				Object handlerInstance = handlerClass.newInstance();
				commandHandlerMap.put(command, handlerInstance);
			} catch (ClassNotFoundException e) {
				throw new ServletException(e);
			} catch (InstantiationException e) {
				throw new ServletException(e);
			} catch (IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 클라이언트가 요청한 기능을 구한다.cmd파라미터 사용
		String command = request.getRequestURI();
		System.out.println("request.getRequestURI:"+command);
		// 요청을 처리할때 사용될 명령어 핸들러 인스턴스를 commandHandlerMap으로부터 구한다.
		if (command.indexOf(request.getContextPath()) == 0) {
			command = command.substring(request.getContextPath().length());
		}
		//		Map(key, value)
		//commandHandlerMap -> /main.do=command.MainHandler
		//						Map(/sitehelper/admchk.do, command.AdmChk)
		CommandHandler handler = (CommandHandler)commandHandlerMap.get(command);
		//		/ShoppingMall/sitehelper/admchk.do
		//		-> /sitehelper/admchk.do
		//		/sitehelper/admchk.do=command.AdmChk
		
		//sitehelper/admchk.do
		//
		System.out.println("request.getContextPath():"+request.getContextPath());
		System.out.println("command:"+command);
		System.out.println("handler:"+handler.toString());
		System.out.println("지금컴파일됨?");
		// 명령어에 해당하는 핸들러 인스턴스가 존재하지 않을 경우 NullHandler를 사용한다.
		if (handler == null){
			handler = new NullHandler();
		}
		String viewPage = null;
		try {
			// 구한 핸들러 인스턴스의 process()매서드를 호출해서 요청을 처리하고,결과로 보여줄 뷰 페이지의 URI를 리턴
			// 값으로 전달 받는다. 핸들러 인스턴스인 handler의 process()메서드는 클라이언트의 요청을 알맞게 처리한
			// 후, 뷰 페이지에 보여줄 결과값을 request나 session의 속성에 저장해야 한다.	
			System.out.println("핸들러의 프로세스 실행한다?");
			viewPage = handler.process(request, response);
			System.out.println("핸들러의 프로세스 실행됨");
		} catch (Throwable e){
			System.out.println("여기");
			throw new ServletException(e);
		}
		
		//핸들러 인스턴스가 리턴한 뷰 페이지로 이동한다.
		System.out.println(viewPage);
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		System.out.println("Dispatched");
		System.out.println("===================================================================");
		
	}
}