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

	public GoodsBean updateGoods(String code){
		try{
			String sql="SELECT " +
					"no, code, category1, category2, name," +
					"use, price, prime, readcnt, inputdate "+
					"FROM t_goods "+
					"WHERE code=?";
			conn = new DBManager().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, code);
			rs = pstmt.executeQuery();
			
			GoodsBean goodsBean = new GoodsBean();
			while(rs.next()){
				goodsBean.setNo(		rs.getInt(1));
				goodsBean.setCode(		rs.getString(2));
				goodsBean.setCategory1(	rs.getInt(3));
				goodsBean.setCategory2(	rs.getInt(4));
				goodsBean.setName(		rs.getString(5));
				goodsBean.setUse(		rs.getString(6));
				goodsBean.setPrice(		rs.getInt(7));
				goodsBean.setPrime(		rs.getInt(8));
				goodsBean.setReadcnt(	rs.getInt(9));
				goodsBean.setInputdate(	rs.getString(10));
			}
			return goodsBean;
			
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		
		return null;
	}
	
	public int getGoodsCount(){
		try {
			String sql = "SELECT count(*) FROM t_goods";
			conn = new DBManager().getConnection();
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			rs.next();
			int count = rs.getInt(1);
			
			return count;
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		return -1;
	}
	
	public ArrayList<GoodsBean> getGoodsList(){
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement(
					"SELECT " +
					"no, code, category1, category2, name," +
					"use, price, prime, readcnt, inputdate "+
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
				goodsBean.setUse(		rs.getString(6));
				goodsBean.setPrice(		rs.getInt(7));
				goodsBean.setPrime(		rs.getInt(8));
				goodsBean.setReadcnt(	rs.getInt(9));
				goodsBean.setInputdate(	rs.getString(10));
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
	
	public int insertGoods(GoodsBean gb){
		try{
			String sql="INSERT INTO t_goods (" +
					"no, 		code, 	category1,	 category2, name," +
					"price, 	prime, 	company,	 region, 	recommand," +
					"best, 		sales, 	inventory,	 readcnt,	redate," +
					"inputdate, use, 	content) " +
					"VALUES (seq_goods.nextval, ?, ?, ?, ?," +	//1~4
					"?, ?, ?, ?, ?," +							//4~9
					"?, ?, ?, ?, sysdate, " +					//10~13
					"sysdate, ?, ?)";							//14, 15
			conn = new DBManager().getConnection();
			//pstmt=conn.prepareStatement(sql);
			pstmt= new LoggableStatement(conn, sql);				//SQL 문 추출 가능
			
			System.out.println(gb.toString());
			
			pstmt.setString( 1, 	gb.getCode());		//NOT NULL
			pstmt.setInt(	 2, 	gb.getCategory1());	//NOT NULL
			pstmt.setInt(	 3, 	gb.getCategory2());	//NOT NULL
			pstmt.setString( 4, 	gb.getName());		//NOT NULL

			pstmt.setInt(	 5, 	gb.getPrice());		//NOT NULL
			pstmt.setInt(	 6,		gb.getPrime());		//NOT NULL
			pstmt.setString( 7, 	gb.getCompany());
			pstmt.setString( 8, 	gb.getRegion());
			pstmt.setString( 9,		gb.getRecommand());

			pstmt.setString( 10,	gb.getBest());
			pstmt.setInt(	 11,	gb.getSales());		//NOT NULL
			pstmt.setInt(	 12,	gb.getInventory());	//NOT NULL
			pstmt.setInt(	 13,	gb.getReadcnt());	//NOT NULL

			pstmt.setString( 14,	gb.getUse());		//NOT NULL
			pstmt.setString( 15,	gb.getContent());	//NOT NULL

			System.out.println("Executing query: "+
					((LoggableStatement)pstmt).getQueryString());	//이렇게 SQL문을 추출
			pstmt.executeUpdate();

			return Integer.parseInt(this.getSeq()); 

		}catch(Exception e){ 
			System.out.println("Dao.insert() 에러"+e.getMessage());
		}finally{
			close();
		}
		return -1;
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
