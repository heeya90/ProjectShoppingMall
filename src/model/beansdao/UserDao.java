package model.beansdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.beans.UserBean;
import model.databasemanage.DBManager;

public class UserDao {
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	UserBean user=null;
	
	public int idDup(String id){		
		int result = 0 ; 
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("select count(*) from t_user where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();			
			rs.next();			
			result = rs.getInt(1);			
			return result;
			
		}catch(Exception e){ 
			System.out.println("Dao.idDup() 에러"+e.getMessage());
		}	
		return result;
	}
	
	public int userCheck(String id,String pw){

		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		int result =0;
		try{
			conn = new DBManager().getConnection();
			
			pstmt=conn.prepareStatement("SELECT count(*) FROM t_user where id=? and pw = ? and use='Y' ");
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			rs.next();
			result = rs.getInt(1);
			if (result == 1){
				pstmt=conn.prepareStatement("update t_user set lastlogin=sysdate, logincnt=logincnt+1 where id=?");
				pstmt.setString(1, id);
				pstmt.executeUpdate();
			}		
		}catch(Exception e){ 
			System.out.println("UserDao.selectUser() 에러"+e.getMessage());
		}
		return result;
	}
	public UserBean selectUser(){
		
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT id from t_user");
			
			rs = pstmt.executeQuery();
			user = new UserBean();
			while(rs.next()){
				user.setId(rs.getString("id"));
			}
			return user;
			
		}catch(Exception e){ 
			System.out.println("Dao.selectUser() 에러"+e.getMessage());
		}
		return null;
	}


	public UserBean selectUserLogin(String id){
		
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT id, pw FROM t_user where = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			user = new UserBean();
			rs.next();
			
			user.setId(rs.getString("id"));
			user.setPw(rs.getString("pw"));
		
			return user;
			
		}catch(Exception e){ 
			System.out.println("Dao.selectUser() 에러"+e.getMessage());
		}finally{
			try {
				if(null!=rs) rs.close();
				if(null!=pstmt) pstmt.close();
				if(null!=conn) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public void insert(String no, String name, String id, String pw, String tel, String cell, String zipcode, String addr, String detailaddr, String email, String use, String point, String grade, String logincnt, String lastlogin, String regdate){
		
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("INSERT INTO t_user (no, name, id, pw, tel, cell, zipcode, addr, detailaddr, email, use, point, grade, logincnt, lastlogin, regdate)"+"VALUES (seq_user.NEXTVAL,?,?,?,?,?,?,?,?,?,'Y',0,'F',0,sysdate,sysdate)");
			//pstmt.setString(1, no);
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, pw);
			pstmt.setString(4, tel);
			pstmt.setString(5, cell);
			pstmt.setString(6, zipcode);
			pstmt.setString(7, addr);
			pstmt.setString(8, detailaddr);
			pstmt.setString(9, email);
			pstmt.executeUpdate();
			
		}catch(Exception e){ 
			System.out.println("Dao.insert() 에러"+e.getMessage());
		}
	}
	
	public void update(String name, String pw, String tel, String cell, String zipcode, String addr, String detailaddr, String email){
		
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("UPDATE t_user SET name=?, pw=?, tel=?, cell=?, zipcode=?, addr=?, detailaddr=?, email=? WHERE id= 'id'");
			pstmt.setString(1, name);
			pstmt.setString(2, pw);
			pstmt.setString(3, tel);
			pstmt.setString(4, cell);
			pstmt.setString(5, zipcode);
			pstmt.setString(6, addr);
			pstmt.setString(7, detailaddr);
			pstmt.setString(8, email);
			pstmt.executeUpdate();
			
		}catch(Exception e){ 
			System.out.println("Dao.update() 에러 "+e.getMessage());
		}
	}

	public void close(){
		try {
			if(null!=rs) rs.close();
			if(null!=pstmt) pstmt.close();
			if(null!=conn) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public int findId(String name,String email){

		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result =0;
		try{
			conn = new DBManager().getConnection();
			
			pstmt=conn.prepareStatement("SELECT count(*) FROM t_user where name=? and email = ? and use='Y' ");
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			rs = pstmt.executeQuery();
			
			rs.next();
			result = rs.getInt(1);
					
			
		}catch(Exception e){ 
			System.out.println("UserDao.findId() 에러"+e.getMessage());
		}
		return result;
	}
}
