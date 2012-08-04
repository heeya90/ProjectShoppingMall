package model.beansdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.beans.GoodsBean;
import model.databasemanage.DBManager;

public class UserGoodsDao {
	
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
			System.out.println("Dao.select() ¿¡·¯"+e.getMessage());
		}finally{
			close();
		}
		
		return null;
	}

}
