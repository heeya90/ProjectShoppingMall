package controller.command.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.command.CommandHandler;

public class GoodsSelect implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		
		//2.�� ���������� ����� ���� ����
		
		//3.�� �������� URI ����
		return "./goods/goods_list_return.jsp";
	}
}
