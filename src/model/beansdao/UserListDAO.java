package model.beansdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.beans.UserBean;
import model.databasemanage.DBManager;

public class UserListDAO {

	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null; 
	public ArrayList<UserBean> select(){
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT no,id,pw,name,tel,cell,zipcode,addr,detailaddr,email,use,point,grade,logincnt,lastlogin,regdate FROM t_user order by no");
			rs = pstmt.executeQuery();
			ArrayList<UserBean> user = new ArrayList<UserBean>();
			while(rs.next()){
				UserBean bean = new UserBean();
				bean.setNo(rs.getInt("no"));
				bean.setId(rs.getString("id"));
				bean.setPw(rs.getString("pw"));
				bean.setName(rs.getString("name"));
				bean.setTel(rs.getString("tel"));
				bean.setCell(rs.getString("cell"));
				bean.setZipcode(rs.getString("zipcode"));
				bean.setAddr(rs.getString("addr"));
				bean.setDetailaddr(rs.getString("detailaddr"));
				bean.setEmail(rs.getString("email"));
				bean.setUse(rs.getString("use"));
				bean.setPoint(rs.getInt("point"));
				bean.setGrade(rs.getString("grade"));
				bean.setLogincnt(rs.getInt("logincnt"));
				bean.setLastlogin(rs.getString("lastlogin"));
				bean.setRegdate(rs.getString("regdate"));
				user.add(bean);
			}
			return user;
		}catch(Exception e){ 
			System.out.println("사용자 리스트 에러 :"+e.getMessage());
		}finally{
			try{if(null!=rs) rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return null;
	}
}
