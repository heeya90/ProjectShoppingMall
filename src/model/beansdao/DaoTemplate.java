package model.beansdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.databasemanage.DBManager;

public abstract class DaoTemplate {
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public void close(){
		try {
			if(null!=rs) rs.close();
			if(null!=pstmt) pstmt.close();
			if(null!=conn) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Object select(int seq){
		
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("" +
					"SELECT " +"*"+
					" FROM "+
					"" +
					" WHERE "+""+"="+"");
			
			rs = pstmt.executeQuery();
			Object bean=null;
			while(rs.next()){
				bean = new Object();
			}
			return bean;
			
		}catch(Exception e){ 
			System.out.println("Dao.select() 에러"+e.getMessage());
		}finally{
			close();
		}
		return null;
	}
	public void insert(Object bean){
		
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement(
					"INSERT INTO " +
					""+"("+""+","+""+")"+
					"VALUES"+"("+""+","+""+")");
			
			pstmt.executeUpdate();
			
		}catch(Exception e){ 
			System.out.println("Dao.insert() 에러"+e.getMessage());
		}finally{
			close();
		}
	}
	public void update(Object bean){
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement(
					"UPDATE "+
					""+
					" SET"+""+"="+""+","+""+"="+""+
					" WHERE "+""+"="+"");
			
			pstmt.executeUpdate();
			
		}catch(Exception e){ 
			System.out.println("Dao.update() 에러"+e.getMessage());
		}finally{
			close();
		}
	}
	public void delete(int seq){
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("" +
					"DELETE FROM "+
					""+
					" WHERE "+""+"="+"");
			
			pstmt.executeUpdate();
			
		}catch(Exception e){ 
			System.out.println("Dao.delete() 에러"+e.getMessage());
		}finally{
			close();
		}
	}
	
}
