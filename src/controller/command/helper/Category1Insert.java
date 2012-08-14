package controller.command.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.Category1Bean;
import model.beansdao.Category_1DAO;
import controller.command.CommandHandler;

public class Category1Insert implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {

		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		//�Է� ������ �Ǵ��ϱ� ���� ������ ��(no�� null�̸� �Է� �ƴϸ� ����)
		String catNo = request.getParameter("categoryNo");
		Category1Bean cab = new Category1Bean();
		Category_1DAO c1dao = new Category_1DAO();
		int result;
		if(catNo==null){
			//�Է�(�ؽ�Ʈ â �Է°��� �ҷ��� �����Ѵ�)
			cab.setName(request.getParameter("categoryName"));
			result = c1dao.insert(cab);
		}else{
			//����(�����ڽ� �Է°��� �ҷ��� �����Ѵ�)
			cab.setNo(Integer.parseInt(request.getParameter("categoryNo")));
			cab.setName(request.getParameter("categoryName"));
			result = c1dao.update(cab);
		};
			//System.out.println(result);

		//2.�� ���������� ����� ���� ����
		//��ȯ�� result ���� �����̸� 0  ���� 1
		request.setAttribute("result1", result);		

		//3.�� �������� URI ����
		return "./category/category1_insert_return.jsp";
	}
}