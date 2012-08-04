package model.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import model.beans.GoodsBean;
import model.beans.GoodsImgBean;
import model.beansdao.GoodsDao;
import model.beansdao.GoodsImgDao;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class GoodsService {
	
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
	public String goodsInsert(MultipartRequest multiReq){
		///////////////////////////////////�ٸ� �Ķ����////////////////////////////////////
		GoodsBean goodsBean = new GoodsBean();
		GoodsDao goodsDao = new GoodsDao();

		goodsBean.setCode		(multiReq.getParameter("p_code"));					// ��ǰ�ڵ�
		goodsBean.setCategory1	(Integer.parseInt(multiReq.getParameter("categoryA")));	// ī�װ� ��з�
		goodsBean.setCategory2	(Integer.parseInt(multiReq.getParameter("categoryB")));	// ī�װ� �ߺз�
		goodsBean.setName		(multiReq.getParameter("p_name"));					// ��ǰ�̸�
		goodsBean.setPrice		(Integer.parseInt(multiReq.getParameter("price")));			// �ǸŰ�
		goodsBean.setPrime		(Integer.parseInt(multiReq.getParameter("prime_price")));	// ����
		goodsBean.setRegion		(multiReq.getParameter("origin_place_radio"));		// ������
		goodsBean.setContent	(multiReq.getParameter("prd_content"));				// �󼼼���
		goodsBean.setRecommand	(multiReq.getParameter("recommand_product"));		// ��õ��ǰ
		goodsBean.setBest		(multiReq.getParameter("new_product"));				// �α��ǰ
		goodsBean.setReadcnt	(0);												// ��ǰ�Է��̹Ƿ� ����Ƚ�� 0
		goodsBean.setUse		(multiReq.getParameter("useType"));					// Y, N, P(�Ͻ�ǰ��)
		//gb.setInventory("�Ӽ�����");	// ���
		//gb.setCompany	 ("�Ӽ�����");	//��ǰȸ��
		
		return goodsDao.insertGoods(goodsBean);		//DB�� �����鼭 ������ ��ȯ
	}
	
	public MultipartRequest fileUpload(HttpServletRequest request) throws Throwable {
		////////////////////////////////////���� ���ε�////////////////////////////////////
		//ServletContext context = request.getServletContext();
		//String realFolder = context.getRealPath(saveFolder);

		String SAVEDIR="C:\\files";		// ��������ġ
		File file = new File(SAVEDIR);
		if(!file.isFile()){				// ������ ��������������(������ ����)
			if(!file.isDirectory()){	// ���丮�� ��������������
				file.mkdir();			// ���丮 �����
			}
		}

		//request.setCharacterEncoding("EUC-KR");
		Integer FILEMAXSIZE = 10*1024*1024;		//10Mbyte
		MultipartRequest multi = new MultipartRequest(request, SAVEDIR, FILEMAXSIZE, "EUC-KR", new DefaultFileRenamePolicy());	//���� ���ε�� ���⼭

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
			
			String SAVEDIR="C:\\files\\";
			if(null == multi.getFilesystemName(name)){
				continue;									//�÷��� ���ϸ��� ���̶�� �ݺ��� �ǳʶٱ�
			}else{
				SAVEDIR+=multi.getFilesystemName(name);//���� �ƴ϶�� ��������+��η� DB�� �ø� ���� ��� �����ϱ� 
			}
			filePathArr.add(SAVEDIR);					//���� ��� arraylist �� ����
			System.out.println(filePathArr.get(i));
			i++;
		}
		return filePathArr;
	}
}
