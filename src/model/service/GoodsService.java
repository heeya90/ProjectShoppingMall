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
		///////////////////////////////////다른 파라미터////////////////////////////////////
		GoodsBean goodsBean = new GoodsBean();
		GoodsDao goodsDao = new GoodsDao();
		String cat1 = multiReq.getParameter("categoryA");
		String cat2 = multiReq.getParameter("categoryB");
		String price = multiReq.getParameter("price");
		String prime = multiReq.getParameter("prime_price");
		String inventory = multiReq.getParameter("inventory");
		if(cat1==null || cat2==null
				|| price==null || prime==null
					|| inventory==null ){	//parseInt 해야해서 널값체크
			return -1;
		}
		
		/* 체크박스이기때문에 체크상태이면 "Y"라는 값이 넘어오지만 체크되지 않았을때의 값을 넘기는 방법을 모름, 그래서 체크되지않았을때는 강제로 "N"을 세팅 */
		String recommand = multiReq.getParameter("recommand_product");
		String hot = multiReq.getParameter("new_product");
		if(null == recommand){ recommand = "N"; }
		if(null == hot){ hot = "N"; }
		
		goodsBean.setCode		(multiReq.getParameter("p_code"));			// 상품코드
		goodsBean.setCategory1	(Integer.parseInt(cat1));					// 카테고리 대분류
		goodsBean.setCategory2	(Integer.parseInt(cat2));					// 카테고리 중분류
		goodsBean.setName		(multiReq.getParameter("p_name"));			// 상품이름
		goodsBean.setPrice		(Integer.parseInt(price));					// 판매가
		goodsBean.setPrime		(Integer.parseInt(prime));					// 원가
		goodsBean.setSales		(0);										// 판매량
		goodsBean.setRegion		(multiReq.getParameter("region"));			// 원산지
		goodsBean.setCompany	(multiReq.getParameter("company"));			// 납품회사
		goodsBean.setContent	(multiReq.getParameter("prd_content"));		// 상세설명
		goodsBean.setRecommand	(recommand);								// 추천상품
		goodsBean.setBest		(hot);										// 인기상품
		goodsBean.setReadcnt	(0);										// 상품입력이므로 읽은횟수 0
		goodsBean.setUse		(multiReq.getParameter("usetype"));			// Y, N, P(일시품절)
		goodsBean.setInventory	(Integer.parseInt(inventory));				// 재고
		
		System.out.println(goodsBean.toString());
		//값 검사해서 빈값있으면 -1 리턴(return 받는곳에서 -1인지 체크)
		if(goodsBean.getCode().equals("") || goodsBean.getName().equals("")		//코드, 이름 체크
			|| goodsBean.getCategory1() == 0 || goodsBean.getCategory2() == 0	//카테고리 대,중분류 체크
			|| goodsBean.getPrice() == 0 || goodsBean.getPrime() == 0			//가격,원가 체크
			|| goodsBean.getContent().equals("")){
			return -1;
		}

		return goodsDao.insertGoods(goodsBean);		//DB에 넣으면서 시퀀스 반환
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
		////////////////////////////////////파일 업로드////////////////////////////////////
		ServletContext context = request.getServletContext();
		String realPath = context.getRealPath("/");
		System.out.println(realPath);
		
		String SAVEDIR=realPath+"uploadimg\\product";		// 저장할위치
		File file = new File(SAVEDIR);
		if(!file.isFile()){				// 파일이 존재하지않으면(지금은 폴더)
			if(!file.isDirectory()){	// 디렉토리가 존재하지않으면
				file.mkdir();			// 디렉토리 만들기
			}
		}

		Integer FILEMAXSIZE = 10*1024*1024;		//업로드 용량 제한 10Mbyte
		//form submit이 아니라 ajax로 보냈으므로 인코딩을 UTF-8로 해준다(ajax는 UTF-8로 인코딩해서 보낸다) 
		MultipartRequest multi = new MultipartRequest(request, SAVEDIR, FILEMAXSIZE, "EUC-KR", new DefaultFileRenamePolicy());// 실제 업로드는 여기서

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
			if(null == multi.getFilesystemName(name)){
				continue;											//올려진 파일명이 널이라면 반복문 건너뛰기
			}else{
				filePathArr.add(multi.getFilesystemName(name));	//널이 아니라면 저장폴더+경로로 DB에 올릴 파일 경로 생성하기 
			}
			System.out.println(filePathArr.get(i));
			i++;
		}
		return filePathArr;
	}
}
