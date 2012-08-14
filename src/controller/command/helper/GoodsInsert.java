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
		 * ī�װ� ���þ������� �޽��� ó��
		 */
		String RETURN_PAGE = "goods_insert.tiles";						// �� �ڵ鷯�� ����������
		GoodsService goodsService = new GoodsService();					// ��ǰ�� ���õ� ó���� ����
		
		MultipartRequest multiReq = goodsService.fileUpload(request);	// request ��ü�� �м��ؼ� ���� ���ε�(�������ε尡 �Ͼ)
		int goodsNo = goodsService.goodsInsert(multiReq);				// ��ǰ�� DB�� �ֱ�
		if(goodsNo == -1){												// DB�� �ִ°��� ����������
			request.setAttribute("isSuccess", "false");					// ������Ʈ��ü�� ���б���ϰ� ����
			System.out.println("��ǰ DB �Է� ����");
			return RETURN_PAGE;
		}
		
		ArrayList<String> filePathArr = goodsService.getFilepath(multiReq);	// ���ε�� ������ ��ο� ���ϸ��� �迭�� ������(contextPath()\img.jpg)
		int result = goodsService.goodsImgInsert(filePathArr, --goodsNo);	// ���ε�� ������ ��ο� ���ϸ�, t_goods�� �������� �����ͺ��̽��� �ֱ�

		request.setAttribute("isSuccess", "true");
		if(0==result){
			System.out.println("�̹��� ��� ���� ����");
			request.setAttribute("isSuccess", "true");
		}else{
			System.out.println("�̹��� ��� ���� ����");
			request.setAttribute("isSuccess", "false");
		}

		return RETURN_PAGE;
	}
}
