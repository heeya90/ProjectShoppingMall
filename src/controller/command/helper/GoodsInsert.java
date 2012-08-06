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
		 * 카테고리 선택안했을시 메시지 처리
		 */
		String RETURN_PAGE = "./goods/goods_insert_return.jsp";			//이 핸들러의 리턴페이지
		GoodsService gService = new GoodsService();						// 상품에 관련된 처리를 묶음
		
		MultipartRequest multiReq = gService.fileUpload(request);		// request 객체를 분석해서 파일 업로드(실제업로드가 일어남)
		int goodsNo = gService.goodsInsert(multiReq);					// 상품을 DB에 넣기
		if(goodsNo == -1){												// DB에 넣는것이 실패했으면
			request.setAttribute("isSuccess", "false");					// 리퀘스트객체에 실패기록하고 리턴
			System.out.println("상품 DB 입력 실패");
			return RETURN_PAGE;
		}
		ArrayList<String> filePathArr = gService.getFilepath(multiReq);	// 업로드된 파일의 경로와 파일명을 배열로 가져옴(C:\file\img.jpg)
		int result = gService.goodsImgInsert(filePathArr, --goodsNo);	// 업로드된 파일의 경로와 파일명, t_goods의 시퀀스를 데이터베이스에 넣기


		if(0==result){
			System.out.println("이미지 경로 저장 성공");
			request.setAttribute("isSuccess", "true");
		}else{
			System.out.println("이미지 경로 저장 실패");
			request.setAttribute("isSuccess", "false");
		}

		return RETURN_PAGE;
	}
}
