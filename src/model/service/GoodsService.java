package model.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import model.beans.GoodsBean;
import model.beans.GoodsImgBean;
import model.beansdao.GoodsDao;
import model.beansdao.GoodsImgDao;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class GoodsService {

	public int goodsInsert(MultipartRequest multiReq){
		///////////////////////////////////�ٸ� �Ķ����////////////////////////////////////
		GoodsBean goodsBean = new GoodsBean();
		GoodsDao goodsDao = new GoodsDao();
		String cat1 = multiReq.getParameter("categoryA");
		String cat2 = multiReq.getParameter("categoryB");
		String price = multiReq.getParameter("price");
		String prime = multiReq.getParameter("prime_price");
		String inventory = multiReq.getParameter("inventory");
		if(cat1==null || cat2==null
				|| price==null || prime==null
					|| inventory==null ){	//parseInt �ؾ��ؼ� �ΰ�üũ
			return -1;
		}
		
		/* üũ�ڽ��̱⶧���� üũ�����̸� "Y"��� ���� �Ѿ������ üũ���� �ʾ������� ���� �ѱ�� ����� ��, �׷��� üũ�����ʾ������� ������ "N"�� ���� */
		String recommand = multiReq.getParameter("recommand_product");
		String hot = multiReq.getParameter("new_product");
		if(null == recommand){ recommand = "N"; }
		if(null == hot){ hot = "N"; }
		
		goodsBean.setCode		(multiReq.getParameter("p_code"));			// ��ǰ�ڵ�
		goodsBean.setCategory1	(Integer.parseInt(cat1));					// ī�װ� ��з�
		goodsBean.setCategory2	(Integer.parseInt(cat2));					// ī�װ� �ߺз�
		goodsBean.setName		(multiReq.getParameter("p_name"));			// ��ǰ�̸�
		goodsBean.setPrice		(Integer.parseInt(price));					// �ǸŰ�
		goodsBean.setPrime		(Integer.parseInt(prime));					// ����
		goodsBean.setSales		(0);										// �Ǹŷ�
		goodsBean.setRegion		(multiReq.getParameter("region"));			// ������
		goodsBean.setCompany	(multiReq.getParameter("company"));			// ��ǰȸ��
		goodsBean.setContent	(multiReq.getParameter("prd_content"));		// �󼼼���
		goodsBean.setRecommand	(recommand);								// ��õ��ǰ
		goodsBean.setBest		(hot);										// �α��ǰ
		goodsBean.setReadcnt	(0);										// ��ǰ�Է��̹Ƿ� ����Ƚ�� 0
		goodsBean.setUse		(multiReq.getParameter("usetype"));			// Y, N, P(�Ͻ�ǰ��)
		goodsBean.setInventory	(Integer.parseInt(inventory));				// ���
		
		System.out.println(goodsBean.toString());
		//�� �˻��ؼ� �������� -1 ����(return �޴°����� -1���� üũ)
		if(goodsBean.getCode().equals("") || goodsBean.getName().equals("")		//�ڵ�, �̸� üũ
			|| goodsBean.getCategory1() == 0 || goodsBean.getCategory2() == 0	//ī�װ� ��,�ߺз� üũ
			|| goodsBean.getPrice() == 0 || goodsBean.getPrime() == 0			//����,���� üũ
			|| goodsBean.getContent().equals("")){
			return -1;
		}

		return goodsDao.insertGoods(goodsBean);		//DB�� �����鼭 ������ ��ȯ
	}

	public int goodsImgInsert(ArrayList<String> filePathArr, int goodsNo){

		ArrayList<GoodsImgBean> goodsImgArr = new ArrayList<GoodsImgBean>(); 
		for(String s : filePathArr){
			GoodsImgBean goodsImg = new GoodsImgBean();
			goodsImg.setGoodsNo(goodsNo);
			goodsImg.setImage(s);
			goodsImg.setThumb1(s);
			goodsImg.setThumb2(s);
			goodsImgArr.add(goodsImg);
		}

		return new GoodsImgDao().insertGoodsImg(goodsImgArr);
	}

	public MultipartRequest fileUpload(HttpServletRequest request) throws Throwable {
		////////////////////////////////////���� ���ε�////////////////////////////////////
		ServletContext context = request.getServletContext();
		String realPath = context.getRealPath("/");
		System.out.println(realPath);
		
		String SAVEDIR=realPath+"uploadimg\\product";		// ��������ġ
		File file = new File(SAVEDIR);
		if(!file.isFile()){				// ������ ��������������(������ ����)
			if(!file.isDirectory()){	// ���丮�� ��������������
				file.mkdir();			// ���丮 �����
			}
		}

		Integer FILEMAXSIZE = 10*1024*1024;		//���ε� �뷮 ���� 10Mbyte
		//form submit�� �ƴ϶� ajax�� �������Ƿ� ���ڵ��� UTF-8�� ���ش�(ajax�� UTF-8�� ���ڵ��ؼ� ������) 
		MultipartRequest multi = new MultipartRequest(request, SAVEDIR, FILEMAXSIZE, "EUC-KR", new DefaultFileRenamePolicy());// ���� ���ε�� ���⼭

		////////////////////////////////////���� ���ε�////////////////////////////////////
		return multi;
	}

	public ArrayList<String> getFilepath(MultipartRequest multi){
		int i=0;
		ArrayList<String> filePathArr = new ArrayList<String>();
		Enumeration<?> files = multi.getFileNames();
		while(files.hasMoreElements()){
			String name = (String)files.nextElement();
			System.out.println(name);
			//System.out.println(multi.getFilesystemName(name));	//�÷��� ���ϸ�
			//System.out.println(multi.getOriginalFileName(name));	//�÷������� ���ϸ�
			if(null == multi.getFilesystemName(name)){
				continue;											//�÷��� ���ϸ��� ���̶�� �ݺ��� �ǳʶٱ�
			}else{
				filePathArr.add(multi.getFilesystemName(name));	//���� �ƴ϶�� ��������+��η� DB�� �ø� ���� ��� �����ϱ� 
			}
			System.out.println(filePathArr.get(i));
			i++;
		}
		return filePathArr;
	}
}
