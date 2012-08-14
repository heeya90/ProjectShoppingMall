package model.service;

import model.beans.HelperBean;
import model.beansdao.HelperDao;

public class HelperService {

	public String getLastLogin(String id){
		// DB������ �����ϱ����� DAOŬ���� ����
		HelperDao helperDao = new HelperDao();

		// DB���� id�� �ش��ϴ� �������� ������ �α��� �ð��� �޾ƿ� �ٷ� ���� 
		return helperDao.getLastLogin(id);
	}
	public String login(String id, String pw){
		// DB������ �����ϱ����� DAOŬ���� ����
		HelperDao helperDao = new HelperDao();
		
		// id�� �Ķ���ͷ� ������ ���� id�� ���� ������ Bean��ü �޾ƿ�
		HelperBean helperBean = helperDao.selectHelper(id);

		// �޾ƿ� ������ Bean��ü�� ������ �Ķ���ͷγѾ�� ���ڿ� ���ؼ� status�� ���¸� ���� 
		String status=null;
		if( id.equals(helperBean.getId()) && pw.equals(helperBean.getPw())){
			// ���̵�, ��й�ȣ ��� �¾�����
			status = "ok";
		}else{
			if(!id.equals(helperBean.getId())){
				// ���̵� Ʋ������
				status = "id";
			}
			if(!pw.equals(helperBean.getPw())){
				// ��й�ȣ�� Ʋ������
				status = "pw";
			}
		}
		// �α��ο� �����ߴٸ�(���̵�,��й�ȣ ��� �¾Ҵٸ�) ������ �α��νð��� ������Ʈ
		if(status.equals("ok")){
			helperDao.setLastLogin(id);
		}
		return status;
	}
}
