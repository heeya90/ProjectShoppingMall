package model.service;

import java.util.ArrayList;

import model.beans.Category1Bean;
import model.beansdao.Category_1DAO;

public class CategoryService {
	public String µî·Ï(Category1Bean c1b){
		int result = new Category_1DAO().insert(c1b);
		if(result == 0){
			return "category_insert.jsp";
		}else{
			return "nullHandler.jsp";
		}
	}
	public ArrayList<Category1Bean> List(){
		
		Category_1DAO dao= new Category_1DAO();
		ArrayList<Category1Bean> arrcat1 = dao.select();
		
		return arrcat1; 
	}
}
