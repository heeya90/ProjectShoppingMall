package model.service;

import model.beans.HelperBean;
import model.beansdao.HelperDao;

public class HelperService {

	public String getLastLogin(String id){
		// DB로직을 수행하기위한 DAO클래스 선언
		HelperDao helperDao = new HelperDao();

		// DB에서 id에 해당하는 관리자의 마지막 로그인 시간을 받아와 바로 리턴 
		return helperDao.getLastLogin(id);
	}
	public String login(String id, String pw){
		// DB로직을 수행하기위한 DAO클래스 선언
		HelperDao helperDao = new HelperDao();
		
		// id를 파라미터로 보내서 같은 id를 가진 관리자 Bean객체 받아옴
		HelperBean helperBean = helperDao.selectHelper(id);

		// 받아온 관리자 Bean객체와 웹에서 파라미터로넘어온 문자열 비교해서 status에 상태를 저장 
		String status=null;
		if( id.equals(helperBean.getId()) && pw.equals(helperBean.getPw())){
			// 아이디, 비밀번호 모두 맞았을때
			status = "ok";
		}else{
			if(!id.equals(helperBean.getId())){
				// 아이디가 틀렸을때
				status = "id";
			}
			if(!pw.equals(helperBean.getPw())){
				// 비밀번호가 틀렸을때
				status = "pw";
			}
		}
		// 로그인에 성공했다면(아이디,비밀번호 모두 맞았다면) 마지막 로그인시간을 업데이트
		if(status.equals("ok")){
			helperDao.setLastLogin(id);
		}
		return status;
	}
}
