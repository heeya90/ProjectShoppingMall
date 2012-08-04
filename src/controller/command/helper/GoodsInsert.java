package controller.command.helper;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.service.GoodsService;

import com.oreilly.servlet.MultipartRequest;

import controller.command.CommandHandler;

public class GoodsInsert implements CommandHandler{

	@Override
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		/*
		 * 1. request ��ü�� �м��ؼ� MulipartRequest�� ��ȯ -> ���� ���ε�
		 * 2. MulitpartRequest ��ü�� �Ķ���͸� �м��ؼ� ��ǰ�� DB�� �ֱ� -> return t_goods ������
		 * 3. ���ε�� ������ ��ο� ���ϸ�, t_goods�� �������� DB�� t_gimg ���̺� �ֱ�
<<<<<<< HEAD
=======
		 * 
		 * *. Ʈ����� ó�� ��������(�̹��� ���ε尡 �ȵǸ� ��ǰ ���ε尡 �ȵǵ���)
>>>>>>> refs/remotes/origin/projectsun
		 * ī�װ� ���þ������� �޽��� ó��
		 */
		GoodsService gService = new GoodsService();

		MultipartRequest multiReq = gService.fileUpload(request);		//request ��ü�� �м��ؼ� ���� ���ε�
		int goodsNo = Integer.parseInt(gService.goodsInsert(multiReq));	//��ǰ DB�� �ֱ�
		ArrayList<String> filePathArr = gService.getFilepath(multiReq);	//���ε�� ������ ��ο� ���ϸ��� �迭�� ������(C:\file\img.jpg)
		int result = gService.goodsImgInsert(filePathArr, --goodsNo);	//���ε�� ������ ��ο� ���ϸ�, t_goods�� �������� �����ͺ��̽��� �ֱ�


		if(0==result){
			System.out.println("����");
			request.setAttribute("isSuccess", "true");
		}else{
			System.out.println("����");
			request.setAttribute("isSuccess", "false");
		}

		return "./goods/goods_insert_return.jsp";
	}
}
