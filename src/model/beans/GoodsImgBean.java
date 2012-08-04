package model.beans;

public class GoodsImgBean {

	private int no;
	private int goodsNo;
	private String thumb1;
	private String thumb2;
	private String image;
	
	
	public GoodsImgBean(int no, int goodsNo, String thumb1, String thumb2, String image) {
		super();
		this.no = no;
		this.goodsNo = goodsNo;
		this.thumb1 = thumb1;
		this.thumb2 = thumb2;
		this.image = image;
	}
	
	
	public GoodsImgBean() {
		super();
	}
	
	@Override
	public String toString() {
		return "GoodsImgBean [no=" + no + ", goods_no=" + goodsNo
				+ ", thumb1=" + thumb1 + ", thumb2=" + thumb2 + ", image="
				+ image + "]";
	}


	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getGoodsNo() {
		return goodsNo;
	}
	public void setGoodsNo(int goodsNo) {
		this.goodsNo = goodsNo;
	}
	public String getThumb1() {
		return thumb1;
	}
	public void setThumb1(String thumb1) {
		this.thumb1 = thumb1;
	}
	public String getThumb2() {
		return thumb2;
	}
	public void setThumb2(String thumb2) {
		this.thumb2 = thumb2;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
}
