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
			String sql = "SELECT NVL(max(orderidx),0) FROM t_category1";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			int orderidx = rs.getInt(1);
			sql = "INSERT INTO t_category1(no, name, use, orderidx) "
					+ " values (seq_category1.NEXTVAL ,? ,? ,? )";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, c1b.getName());
			pstmt.setString(2, "Y");
			pstmt.setInt(3, ++orderidx);
			pstmt.executeUpdate();
			return 0;
		} catch (Exception e) {
			System.out.println("카테고리 1 입력에러 :" + e.getMessage());
		} finally{
			try{if(null!=rs)rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return 1;
	}

	public ArrayList<Category1Bean> select(){
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT no, name, orderidx FROM t_category1 WHERE use='Y' order by orderidx");
			rs = pstmt.executeQuery();
			ArrayList<Category1Bean> arrcat1 = new ArrayList<Category1Bean>();
			while(rs.next()){
				Category1Bean bean = new Category1Bean();
				bean.setNo(rs.getInt("no"));
				bean.setName(rs.getString("name"));
				bean.setOrderidx(rs.getInt("Orderidx"));
				arrcat1.add(bean);
			}
			return arrcat1;
		}catch(Exception e){ 
			System.out.println("카테고리1 업데이트 에러 :"+e.getMessage());
		}finally{
			try{if(null!=rs) rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return null;
	}
	
	public int update(Category1Bean c1b) {
		try {
			conn = new DBManager().getConnection();
			String sql ="update t_category1 set name=? where no=?";
			pstmt = conn.prepareStatement(sql);
			System.out.println(c1b.getName());
			pstmt.setString(1, c1b.getName());
			pstmt.setInt(2, c1b.getNo());
			pstmt.executeUpdate();
			System.out.println(c1b.getNo() + "update 성공");
			return 0;
		} catch (Exception e) {
			System.out.println("카테고리 1 수정에러" + e.getMessage());
		} finally{
			try{if(null!=rs)rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return 1;
	}

	
	
	
}	
