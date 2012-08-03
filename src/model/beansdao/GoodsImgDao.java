package model.beansdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.beans.GoodsImgBean;
import model.databasemanage.DBManager;

public class GoodsImgDao {
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public ArrayList<GoodsImgBean> getGoodsImg(int goodsNo){

		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement("" +
					"SELECT thumb1, thumb2, image FROM t_gimg "+
					"WHERE goods_no=?");
			pstmt.setInt(1, goodsNo);
			rs = pstmt.executeQuery();
			
			ArrayList<GoodsImgBean> arrGoodsImg = new ArrayList<GoodsImgBean>();
			while(rs.next()){
				GoodsImgBean goodsImgBean = new GoodsImgBean();
				goodsImgBean.setThumb1(	rs.getString(1));
				goodsImgBean.setThumb1(	rs.getString(2));
				goodsImgBean.setImage(	rs.getString(3));
				arrGoodsImg.add(goodsImgBean);
			}
			return arrGoodsImg;

		}catch(Exception e){ 
			System.out.println("Dao.select() 에러"+e.getMessage());
		}finally{
			close();
		}
		return null;
	}
	
	public int insertGoodsImg(ArrayList<GoodsImgBean> gImgArr){
		
		try{
			conn = new DBManager().getConnection();
			pstmt=conn.prepareStatement(
					"INSERT INTO " +
					"t_gimg"+"(no, goods_no, image, thumb1, thumb2)"+
					"VALUES"+"(seq_gimg.nextval, ?, ?, ?, ?)");
			
			for(GoodsImgBean gib : gImgArr){
				pstmt.setInt(1, gib.getGoodsNo());
				pstmt.setString(2, gib.getImage());
				pstmt.setString(3, gib.getThumb1());
				pstmt.setString(4, gib.getThumb2());
				pstmt.executeUpdate();
			}
			
			return 0;
			
		}catch(Exception e){ 
			System.out.println("Dao.insert() 에러"+e.getMessage());
		}finally{
			close();
		}
		return 1;
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
