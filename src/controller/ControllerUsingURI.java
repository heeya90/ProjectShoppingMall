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

	// ���� ���� �����ϰ� �ִ� ���� ������ ��θ� ���Ѵ�.
	private Map commandHandlerMap = new HashMap();

	public void init(ServletConfig config) throws ServletException {
		String configFile = config.getInitParameter("configFile");
		Properties prop = new Properties();
		FileInputStream fis = null;
		try {// ���� ���Ϸκ��� ���� ������ �о�� Properties ��ü�� �����Ѵ�.
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
		while (keyIter.hasNext()) {// Properties ��ü�� ����� ���� ������ �о�� <Ŀ�ǵ�,
			// �ڵ鷯�ν��Ͻ�>���������� commandHandlerMap �� ����
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
		// Ŭ���̾�Ʈ�� ��û�� ����� ���Ѵ�.cmd�Ķ���� ���
		String command = request.getRequestURI();
		System.out.println("request.getRequestURI:"+command);
		// ��û�� ó���Ҷ� ���� ��ɾ� �ڵ鷯 �ν��Ͻ��� commandHandlerMap���κ��� ���Ѵ�.
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
		System.out.println("���������ϵ�?");
		// ��ɾ �ش��ϴ� �ڵ鷯 �ν��Ͻ��� �������� ���� ��� NullHandler�� ����Ѵ�.
		if (handler == null){
			handler = new NullHandler();
		}
		String viewPage = null;
		try {
			// ���� �ڵ鷯 �ν��Ͻ��� process()�ż��带 ȣ���ؼ� ��û�� ó���ϰ�,����� ������ �� �������� URI�� ����
			// ������ ���� �޴´�. �ڵ鷯 �ν��Ͻ��� handler�� process()�޼���� Ŭ���̾�Ʈ�� ��û�� �˸°� ó����
			// ��, �� �������� ������ ������� request�� session�� �Ӽ��� �����ؾ� �Ѵ�.	
			System.out.println("�ڵ鷯�� ���μ��� �����Ѵ�?");
			viewPage = handler.process(request, response);
			System.out.println("�ڵ鷯�� ���μ��� �����");
		} catch (Throwable e){
			System.out.println("����");
			throw new ServletException(e);
		}
		
		//�ڵ鷯 �ν��Ͻ��� ������ �� �������� �̵��Ѵ�.
		System.out.println(viewPage);
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		System.out.println("Dispatched");
		System.out.println("===================================================================");
		
	}
}