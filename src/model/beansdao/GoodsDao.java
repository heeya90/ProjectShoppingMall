package model.beansdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.beans.GoodsBean;
import model.databasemanage.DBManager;
import model.databasemanage.LoggableStatement;

public class GoodsDao {
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;

	public ArrayList<GoodsBean> getGoodsList(){
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement(
					"SELECT " +
					"no, code, category1, category2, name," +
					"price, prime, readcnt, inputdate "+
					"FROM t_goods "+
					"WHERE use='Y'");

			rs = pstmt.executeQuery();
			ArrayList<GoodsBean> arrGoods = new ArrayList<GoodsBean>();
			while(rs.next()){
				GoodsBean goodsBean = new GoodsBean();
				goodsBean.setNo(		rs.getInt(1));
				goodsBean.setCode(		rs.getString(2));
				goodsBean.setCategory1(	rs.getInt(3));
				goodsBean.setCategory2(	rs.getInt(4));
				goodsBean.setName(		rs.getString(5));
				goodsBean.setPrice(		rs.getInt(6));
				goodsBean.setPrime(		rs.getInt(7));
				goodsBean.setReadcnt(	rs.getInt(8));
				goodsBean.setInputdate(	rs.getString(9));
				arrGoods.add(goodsBean);
			}
			return arrGoods;

		}catch(Exception e){ 
			System.out.println("Dao.select() 에러"+e.getMessage());
		}finally{
			close();
		}
		
		return null;
	}
	public String insertGoods(GoodsBean gb){
		try{
			String sql="INSERT INTO t_goods (" +
					"no, code, category1, category2, name," +
					"price, prime, company, region, recommand," +
					"best, sales, inventory, readcnt, redate," +
					"inputdate, use, content) " +
					"VALUES (seq_goods.nextval, ?, ?, ?, ?," +
					"?, ?, ?, ?, ?," +
					"?, ?, ?, ?, sysdate, " +
					"sysdate, ?, ?)";
			conn = new DBManager().getConnection();
			//pstmt=conn.prepareStatement(sql);
			pstmt= new LoggableStatement(conn, sql);	//SQL 문 추출 가능

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
					((LoggableStatement)pstmt).getQueryString());	//이렇게 SQL문을 추출 가능
			pstmt.executeUpdate();

			return this.getSeq(); 

		}catch(Exception e){ 
			System.out.println("Dao.insert() 에러"+e.getMessage());
		}finally{
			close();
		}
		return null;
	}

	public String getSeq(){

		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT last_number " +
					"FROM seq WHERE sequence_name='SEQ_GOODS'");
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
