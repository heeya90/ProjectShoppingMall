package model.beansdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.beans.HelperBean;
import model.databasemanage.DBManagerPool;

public class HelperDao {
	//insert, delete, update, selecte �޼ҵ�
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;

	// ���̵� �޾� �ش��ϴ� �������࿡ ����ð� ����
	public void setLastLogin(String id){
		try {
			DBManagerPool.getInstance();
			conn = DBManagerPool.getDataSource().getConnection();
			
			System.out.println(id);
			pstmt=conn.prepareStatement(" UPDATE t_helper SET lastlogin=sysdate WHERE id=? ");
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}finally{
			close();
		}
	}

	// ���̵� �޾� �ش��ϴ� ���������� ������ �α��νð��� String���� ��ȯ
	public String getLastLogin(String id){

		try {
			DBManagerPool.getInstance();
			conn = DBManagerPool.getDataSource().getConnection();
			
			pstmt=conn.prepareStatement("SELECT lastlogin FROM t_helper WHERE id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();

			return rs.getString(1);

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}finally{
			close();
		}

		return null;
	}
	public HelperBean selectHelper(String id){

		HelperBean helper=null;
		try{
			DBManagerPool.getInstance();
			conn = DBManagerPool.getDataSource().getConnection();

			pstmt=conn.prepareStatement("SELECT id, pw, lastlogin FROM t_helper WHERE id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			helper = new HelperBean();
			while(rs.next()){
				helper.setId(rs.getString("id"));
				helper.setPw(rs.getString("pw"));
			}
			return helper;

		}catch(SQLException e){ 
			System.out.println("HelperDao.selectHelper() ����"+e.getMessage());
		}finally{
			try {
				if(null!=rs) rs.close();
				if(null!=pstmt) pstmt.close();
				if(null!=conn) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			finally{
				close();
			}
		}
		return null;
	}
	public void insertAdmin(){

	}
	public void deleteAdmin(){

	}
	public void updateAdmin(){

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
}
