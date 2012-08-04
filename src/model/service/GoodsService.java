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
		///////////////////////////////////다른 파라미터////////////////////////////////////
		GoodsBean goodsBean = new GoodsBean();
		GoodsDao goodsDao = new GoodsDao();

		goodsBean.setCode		(multiReq.getParameter("p_code"));					// 상품코드
		goodsBean.setCategory1	(Integer.parseInt(multiReq.getParameter("categoryA")));	// 카테고리 대분류
		goodsBean.setCategory2	(Integer.parseInt(multiReq.getParameter("categoryB")));	// 카테고리 중분류
		goodsBean.setName		(multiReq.getParameter("p_name"));					// 상품이름
		goodsBean.setPrice		(Integer.parseInt(multiReq.getParameter("price")));			// 판매가
		goodsBean.setPrime		(Integer.parseInt(multiReq.getParameter("prime_price")));	// 원가
		goodsBean.setRegion		(multiReq.getParameter("origin_place_radio"));		// 원산지
		goodsBean.setContent	(multiReq.getParameter("prd_content"));				// 상세설명
		goodsBean.setRecommand	(multiReq.getParameter("recommand_product"));		// 추천상품
		goodsBean.setBest		(multiReq.getParameter("new_product"));				// 인기상품
		goodsBean.setReadcnt	(0);												// 상품입력이므로 읽은횟수 0
		goodsBean.setUse		(multiReq.getParameter("useType"));					// Y, N, P(일시품절)
		//gb.setInventory("속성없음");	// 재고
		//gb.setCompany	 ("속성없음");	//납품회사
		
		return goodsDao.insertGoods(goodsBean);		//DB에 넣으면서 시퀀스 반환
	}
	
	public MultipartRequest fileUpload(HttpServletRequest request) throws Throwable {
		////////////////////////////////////파일 업로드////////////////////////////////////
		//ServletContext context = request.getServletContext();
		//String realFolder = context.getRealPath(saveFolder);

		String SAVEDIR="C:\\files";		// 저장할위치
		File file = new File(SAVEDIR);
		if(!file.isFile()){				// 파일이 존재하지않으면(지금은 폴더)
			if(!file.isDirectory()){	// 디렉토리가 존재하지않으면
				file.mkdir();			// 디렉토리 만들기
			}
		}

		//request.setCharacterEncoding("EUC-KR");
		Integer FILEMAXSIZE = 10*1024*1024;		//10Mbyte
		MultipartRequest multi = new MultipartRequest(request, SAVEDIR, FILEMAXSIZE, "EUC-KR", new DefaultFileRenamePolicy());	//실제 업로드는 여기서

		////////////////////////////////////파일 업로드////////////////////////////////////
		return multi;
	}

	public ArrayList<String> getFilepath(MultipartRequest multi){
		int i=0;
		ArrayList<String> filePathArr = new ArrayList<String>();
		Enumeration<?> files = multi.getFileNames();
		while(files.hasMoreElements()){
			String name = (String)files.nextElement();
			System.out.println(name);
			//System.out.println(multi.getFilesystemName(name));	//올려진 파일명
			//System.out.println(multi.getOriginalFileName(name));	//올려지기전 파일명
			
			String SAVEDIR="C:\\files\\";
			if(null == multi.getFilesystemName(name)){
				continue;									//올려진 파일명이 널이라면 반복문 건너뛰기
			}else{
				SAVEDIR+=multi.getFilesystemName(name);//널이 아니라면 저장폴더+경로로 DB에 올릴 파일 경로 생성하기 
			}
			filePathArr.add(SAVEDIR);					//파일 경로 arraylist 에 저장
			System.out.println(filePathArr.get(i));
			i++;
		}
		return filePathArr;
	}
}
