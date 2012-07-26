package model.beans;

public class GoodsImgBean {

	private int no;
	private int goods_no;
	private String thumb1;
	private String thumb2;
	private String image;
	
	
	public GoodsImgBean(int no, int goods_no, String thumb1, String thumb2, String image) {
		super();
		this.no = no;
		this.goods_no = goods_no;
		this.thumb1 = thumb1;
		this.thumb2 = thumb2;
		this.image = image;
	}
	
	
	public GoodsImgBean() {
		super();
	}


	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getGoods_no() {
		return goods_no;
	}
	public void setGoods_no(int goods_no) {
		this.goods_no = goods_no;
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
