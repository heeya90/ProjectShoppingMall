package model.beansdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.beans.Category1Bean;
import model.databasemanage.DBManager;

public class Category_1DAO {

	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null; 
	
	public int insert(Category1Bean c1b){

		try {
			conn = new DBManager().getConnection();
			String sql = "SELECT max(orderidx) FROM t_category1";
			rs = pstmt.executeQuery(sql);
			//rs.next(); //해야되나??
			int orderidx = rs.getInt("orderidx");
			
			sql = "INSERT INTO t_category1" // (no, name, use, orderidx)
					+ " values (seq_category1.NEXTVAL ,? ,? ,? )";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, c1b.getName());
			pstmt.setString(2, "Y");
			pstmt.setInt(3, orderidx++);
			pstmt.executeUpdate();
			return 0;

		} catch (Exception e) {
			System.out.println("insert Exception " + e.getMessage());
		} finally{
			try{if(null!=rs)rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return 1;
	}

	public ArrayList<Category1Bean> select(){

		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT name, orderidx FROM t_category1 WHERE use='Y'");
			rs = pstmt.executeQuery();
			
			ArrayList<Category1Bean> arrcat1 = new ArrayList<Category1Bean>();
			
			while(rs.next()){
				Category1Bean bean = new Category1Bean();
				bean.setName(rs.getString("name"));
				bean.setOrderidx(rs.getInt("Orderidx"));
				arrcat1.add(bean);
			}
			return arrcat1;
			
		}catch(Exception e){ 
			System.out.println("Dao.select() 에러"+e.getMessage());
		}finally{
			try{if(null!=rs) rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return null;
	}

}	
