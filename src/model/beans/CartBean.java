package model.beans;

public class CartBean {
	int no;
	String csession;
	int goods;
	int color;
	int sized;
	int su;
	String inputdate;
	String purchase;
	
	public CartBean(int no, String csession, int goods, int color, int sized,
			int su, String inputdate, String purchase) {
		super();
		this.no = no;
		this.csession = csession;
		this.goods = goods;
		this.color = color;
		this.sized = sized;
		this.su = su;
		this.inputdate = inputdate;
		this.purchase = purchase;
	}

	public CartBean() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getCsession() {
		return csession;
	}

	public void setCsession(String csession) {
		this.csession = csession;
	}

	public int getGoods() {
		return goods;
	}

	public void setGoods(int goods) {
		this.goods = goods;
	}

	public int getColor() {
		return color;
	}

	public void setColor(int color) {
		this.color = color;
	}

	public int getSized() {
		return sized;
	}

	public void setSized(int sized) {
		this.sized = sized;
	}

	public int getSu() {
		return su;
	}

	public void setSu(int su) {
		this.su = su;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public String getPurchase() {
		return purchase;
	}

	public void setPurchase(String purchase) {
		this.purchase = purchase;
	}
	
	
	

}
