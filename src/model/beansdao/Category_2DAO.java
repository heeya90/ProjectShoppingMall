package model.beansdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.beans.Category2Bean;
import model.databasemanage.DBManager;

public class Category_2DAO {

	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null; 
	
	public int insert(String cat1No,Category2Bean c2b){
		try {
			conn = new DBManager().getConnection();
			String sql = "SELECT NVL(max(orderidx),0) FROM t_category2";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			int orderidx = rs.getInt(1);
			sql = "INSERT INTO t_category2(no, ctg1, name, use, orderidx) "
					+ " values (seq_category2.NEXTVAL,? ,? ,? ,? )";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(cat1No));
			pstmt.setString(2, c2b.getName());
			pstmt.setString(3, "Y");
			pstmt.setInt(4, ++orderidx);
			pstmt.executeUpdate();
			return 0;
		} catch (Exception e) {
			System.out.println("카테고리 2 입력에러 :" + e.getMessage());
		} finally{
			try{if(null!=rs)rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return 1;
	}

	public ArrayList<Category2Bean> select(String cat1No){
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT no,name, orderidx FROM t_category2 WHERE use='Y' and ctg1=? order by orderidx");
	
			pstmt.setString(1, cat1No);
			rs = pstmt.executeQuery();
			ArrayList<Category2Bean> arrcat2 = new ArrayList<Category2Bean>();
			
			while(rs.next()){
				Category2Bean bean = new Category2Bean();
				bean.setNo(rs.getInt("no"));
				bean.setName(rs.getString("name"));
				bean.setOrderidx(rs.getInt("Orderidx"));
				arrcat2.add(bean);
			}
			return arrcat2;
		}catch(Exception e){ 
			System.out.println("카테고리2 업데이트 에러 : "+e.getMessage());
		}finally{
			try{if(null!=rs) rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return null;
	}
	
	public int update(Category2Bean c2b) {
		try {
			conn = new DBManager().getConnection();
			String sql ="update t_category2 set name=? where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, c2b.getName());
			pstmt.setInt(2, c2b.getNo());
			pstmt.executeUpdate();
			System.out.println(c2b.getNo() + "update 성공");
			return 0;
		} catch (Exception e) {
			System.out.println("카테고리 2 수정에러" + e.getMessage());
		} finally{
			try{if(null!=rs)rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return 1;
	}
}	
