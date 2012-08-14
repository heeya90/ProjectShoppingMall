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
	
	
	//회원가입시 아이디 중복확인
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
		}finally{
			try {
				if(null!=rs) rs.close();
				if(null!=pstmt) pstmt.close();
				if(null!=conn) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	//로그인 id, pw 확인
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
		}finally{
			try {
				if(null!=rs) rs.close();
				if(null!=pstmt) pstmt.close();
				if(null!=conn) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	
	//회원가입
	public void insert(String no, String name, String id, String pw, String tel, String cell, String zipcode, String addr, String detailaddr, String email, String use, String point, String grade, String logincnt, String lastlogin, String regdate){
		
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("INSERT INTO t_user (no, name, id, pw, tel, cell, zipcode, addr, detailaddr, email, use, point, grade, logincnt, lastlogin, regdate)"+"VALUES (seq_user.NEXTVAL,?,?,?,?,?,?,?,?,?,'Y',0,'F',0,sysdate,sysdate)");
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
		}finally{
			try {
				if(null!=rs) rs.close();
				if(null!=pstmt) pstmt.close();
				if(null!=conn) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//회원정보 수정
	public void update(String id,String name, String pw, String tel, String cell, String zipcode, String addr, String detailaddr, String email){
		
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("UPDATE t_user SET name=?, pw=?, tel=?, cell=?, zipcode=?, addr=?, detailaddr=?, email=? WHERE id= ?");
			pstmt.setString(1, name);
			pstmt.setString(2, pw);
			pstmt.setString(3, tel);
			pstmt.setString(4, cell);
			pstmt.setString(5, zipcode);
			pstmt.setString(6, addr);
			pstmt.setString(7, detailaddr);
			pstmt.setString(8, email);
			pstmt.setString(9, id);
			pstmt.executeUpdate();
			
		}catch(Exception e){ 
			System.out.println("Dao.update() 에러 "+e.getMessage());
		}finally{
			try {
				if(null!=rs) rs.close();
				if(null!=pstmt) pstmt.close();
				if(null!=conn) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	

	//id 찾기
	public String findidpw(String name, String email){
		String result = null;
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT id FROM t_user where name=? and email=?");

			pstmt.setString(1, name);
			pstmt.setString(2, email);
			rs = pstmt.executeQuery();
			if (rs.next()){								
				result = rs.getString("id");	
			}else{
				result = "입력된 정보가 잘못된 내용";
			}				
						
		}catch(Exception e){ 
			System.out.println("사용자  이름별 리스트 에러 :"+e.getMessage());
		}finally{
			try{if(null!=rs) rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return result;
	}
	//pw찾기
	public String findidpw(String id, String name, String email){
		String result = null;
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT pw FROM t_user where id=? and name=? and email=?");
			
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			rs = pstmt.executeQuery();

			if(rs.next()){				
				result = rs.getString("pw");				
			}else{
				result = "입력된 정보가 잘못된 내용";
			}			
		}catch(Exception e){ 
			System.out.println("사용자  이름별 리스트 에러 :"+e.getMessage());
		}finally{
			try{if(null!=rs) rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return result;
	}
	
	public UserBean selectUserUdate(String id){
		
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT pw,name,tel,cell,zipcode,addr,detailaddr,email FROM t_user where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			UserBean selectuser = new UserBean();
			rs.next();
			
			selectuser.setName(rs.getString("name"));
			selectuser.setPw(rs.getString("pw"));
			selectuser.setTel(rs.getString("tel"));
			selectuser.setCell(rs.getString("cell"));
			selectuser.setZipcode(rs.getString("zipcode"));
			selectuser.setAddr(rs.getString("addr"));
			selectuser.setDetailaddr(rs.getString("detailaddr"));
			selectuser.setEmail(rs.getString("email"));
			
			return selectuser;
			
		}catch(Exception e){ 
			System.out.println("Dao.selectUserUdate() 에러"+e.getMessage());
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
}
