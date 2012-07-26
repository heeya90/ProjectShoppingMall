package model.beans;

public class OrderGoodsBean {

	private int no;
	private int orderno;
	private int goodsno;
	private String color;
	private String gsize;
	private int su;
	private int price;
	
	
	public OrderGoodsBean(int no, int orderno, int goodsno, String color,
			String gsize, int su, int price) {
		super();
		this.no = no;
		this.orderno = orderno;
		this.goodsno = goodsno;
		this.color = color;
		this.gsize = gsize;
		this.su = su;
		this.price = price;
	}
	
	
	public OrderGoodsBean() {
		super();
	}


	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getOrderno() {
		return orderno;
	}
	public void setOrderno(int orderno) {
		this.orderno = orderno;
	}
	public int getGoodsno() {
		return goodsno;
	}
	public void setGoodsno(int goodsno) {
		this.goodsno = goodsno;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getGsize() {
		return gsize;
	}
	public void setGsize(String gsize) {
		this.gsize = gsize;
	}
	public int getSu() {
		return su;
	}
	public void setSu(int su) {
		this.su = su;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
}
