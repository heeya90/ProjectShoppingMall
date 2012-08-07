package model.beansdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.beans.GoodsBean;
import model.databasemanage.DBManager;

public class UserGoodsDao {
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;

	public ArrayList<GoodsBean> getrecommandgoodsList(){
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT no, code, category1," +
					" category2, name, price, prime, company, region, " +
					" content, sales FROM t_goods WHERE use='Y' and " +
					" recommand='Y'");
			rs = pstmt.executeQuery();
			ArrayList<GoodsBean> arrGoods = new ArrayList<GoodsBean>();
			while(rs.next()){
				GoodsBean bean = new GoodsBean();
				bean.setNo(rs.getInt("no"));
				bean.setCode(rs.getString("code"));
				bean.setCategory1(rs.getInt("category1"));
				bean.setCategory2(rs.getInt("category2"));
				bean.setName(rs.getString("name"));
				bean.setPrice(rs.getInt("price"));
				bean.setPrime(rs.getInt("prime"));
				bean.setCompany(rs.getString("company"));
				bean.setRegion(rs.getString("region"));
				bean.setContent(rs.getString("content"));
				bean.setSales(rs.getInt("sales"));				
				arrGoods.add(bean);
			}
			return arrGoods;

		}catch(Exception e){ 
			System.out.println("추천상품 셀렉트 에러 :"+e.getMessage());
		}finally{
			try{if(null!=rs) rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return null;
	}
	public ArrayList<GoodsBean> getbestgoodsList(){
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("SELECT no, code, category1," +
					" category2, name, price, prime, company, region, " +
					" content, sales FROM t_goods WHERE use='Y' and " +
					" best='Y'");
			rs = pstmt.executeQuery();
			ArrayList<GoodsBean> arrGoods = new ArrayList<GoodsBean>();
			while(rs.next()){
				GoodsBean Bean = new GoodsBean();
				Bean.setNo(rs.getInt("no"));
				Bean.setCode(rs.getString("code"));
				Bean.setCategory1(rs.getInt("category1"));
				Bean.setCategory2(rs.getInt("category2"));
				Bean.setName(rs.getString("name"));
				Bean.setPrice(rs.getInt("price"));
				Bean.setPrime(rs.getInt("prime"));
				Bean.setCompany(rs.getString("company"));
				Bean.setRegion(rs.getString("region"));
				Bean.setContent(rs.getString("content"));
				Bean.setSales(rs.getInt("sales"));				
				arrGoods.add(Bean);
			}
			return arrGoods;

		}catch(Exception e){ 
			System.out.println("인기상품 셀렉트 에러 :"+e.getMessage());
		}finally{
			try{if(null!=rs) rs.close(); if(null!=pstmt) pstmt.close();if(conn!=null) conn.close();
			}catch(SQLException e){e.getMessage();}
		}
		return null;
	}
}
