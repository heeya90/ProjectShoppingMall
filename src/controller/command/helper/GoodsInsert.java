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
		 * 1. request 객체를 분석해서 MulipartRequest로 변환 -> 파일 업로드
		 * 2. MulitpartRequest 객체의 파라미터를 분석해서 상품을 DB에 넣기 -> return t_goods 시퀀스
		 * 3. 업로드된 파일의 경로와 파일명, t_goods의 시퀀스를 DB의 t_gimg 테이블에 넣기
<<<<<<< HEAD
=======
		 * 
		 * *. 트랜잭션 처리 구현예정(이미지 업로드가 안되면 상품 업로드가 안되도록)
>>>>>>> refs/remotes/origin/projectsun
		 * 카테고리 선택안했을시 메시지 처리
		 */
		GoodsService gService = new GoodsService();

		MultipartRequest multiReq = gService.fileUpload(request);		//request 객체를 분석해서 파일 업로드
		int goodsNo = Integer.parseInt(gService.goodsInsert(multiReq));	//상품 DB에 넣기
		ArrayList<String> filePathArr = gService.getFilepath(multiReq);	//업로드된 파일의 경로와 파일명을 배열로 가져옴(C:\file\img.jpg)
		int result = gService.goodsImgInsert(filePathArr, --goodsNo);	//업로드된 파일의 경로와 파일명, t_goods의 시퀀스를 데이터베이스에 넣기


		if(0==result){
			System.out.println("성공");
			request.setAttribute("isSuccess", "true");
		}else{
			System.out.println("실패");
			request.setAttribute("isSuccess", "false");
		}

		return "./goods/goods_insert_return.jsp";
	}
}
