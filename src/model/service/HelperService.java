package model.service;

import model.beans.HelperBean;
import model.beansdao.HelperDao;
import model.beansdao.HelperDaoPool;

public class HelperService {

	public HelperBean login(){

		HelperBean helperBean = new HelperDao().selectHelper();

		return helperBean;
	}

	public HelperBean loginPool(){
		
		HelperBean helperBean = new HelperDaoPool().selectHelper();

		return helperBean;
	}
}
