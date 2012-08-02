package controller.command.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.Category2Bean;
import model.beansdao.Category_2DAO;
import controller.command.CommandHandler;

public class Category2Insert implements CommandHandler{
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {

		//1.��ɾ�� ���õ� ����Ͻ� ���� ó��
		//�Է� ������ �Ǵ��ϱ� ���� ������ ��(no�� null�̸� �Է� �ƴϸ� ����)
		String cat1No = request.getParameter("category1No");
		
		String catNo = request.getParameter("categoryNo");
		Category2Bean cab2 = new Category2Bean();
		Category_2DAO c2dao = new Category_2DAO();
		int result;
		if(catNo==null){
			//�Է�(�ؽ�Ʈ â �Է°��� �ҷ��� �����Ѵ�)
			cab2.setName(request.getParameter("categoryName2"));
			result = c2dao.insert(cat1No,cab2);

			}else{
			//����(�����ڽ� �Է°��� �ҷ��� �����Ѵ�)
			cab2.setNo(Integer.parseInt(request.getParameter("categoryNo")));
			cab2.setName(request.getParameter("categoryName"));
			result = c2dao.update(cab2);
		};
			//System.out.println(result);

		//2.�� ���������� ����� ���� ����
		//��ȯ�� result ���� �����̸� 0  ���� 1
			System.out.println(result);
		request.setAttribute("result2", result);		

		//3.�� �������� URI ����
		return "./category/category2_insert_return.jsp";
	}
}