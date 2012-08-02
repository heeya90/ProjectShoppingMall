package model.beansdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.beans.GoodsBean;
import model.databasemanage.DBManager;
import model.databasemanage.LoggableStatement;

public class GoodsDao {
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public int insert(GoodsBean gb){
		try{
			String sql="INSERT INTO t_goods " +
					"VALUES (seq_goods.nextval, ?, ?, ?, ?," +
							"?, ?, ?, ?, ?," +
							"?, ?, ?, ?, sysdate, " +
							"sysdate, ?, ?)";
			conn = new DBManager().getConnection();
			//pstmt=conn.prepareStatement(sql);
			pstmt= new LoggableStatement(conn, sql);
			
			pstmt.setString(1, 	gb.getCode());
			pstmt.setInt(	2, 	gb.getCategory1());
			pstmt.setInt(	3, 	gb.getCategory2());
			pstmt.setString(4, 	gb.getName());
			
			pstmt.setInt(	5, 	gb.getPrice());
			pstmt.setInt(	6,	gb.getPrime());
			pstmt.setString(7, 	gb.getCompany());
			pstmt.setString(8, 	gb.getRegion());
			pstmt.setString(9,	gb.getRecommand());
			
			pstmt.setString(10,	gb.getBest());
			pstmt.setInt(	11, gb.getSales());
			pstmt.setInt(	12, gb.getInventory());
			pstmt.setInt(	13, gb.getReadcnt());
			
			pstmt.setString(14,	gb.getUse());
			pstmt.setString(15,	gb.getContent());
			
			System.out.println("Executing query: "+
					((LoggableStatement)pstmt).getQueryString());
			pstmt.executeUpdate();
			
			return 0; 
			
		}catch(Exception e){ 
			System.out.println("Dao.insert() 에러"+e.getMessage());
		}finally{
			close();
		}
		return 1;
	}
	public String getSeq(){
		
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT last_number " +
					"FROM seq WHERE sequence_name='seq_goods'");
			rs = pstmt.executeQuery();
			String seq=null;
			while(rs.next()){
				Integer intseq=rs.getInt("last_number");
				seq = intseq.toString();
			}
			return seq;

		}catch(Exception e){ 
			System.out.println("Dao.select() 에러"+e.getMessage());
		}finally{
			close();
		}
		return null;
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
