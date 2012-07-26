package model.beans;

public class Category2Bean {
	int	no;
	int	ctg1;
	String	name;
	String	use;
	int	orderidx;
	
	public Category2Bean(int no, int ctg1, String name, String use, int orderidx) {
		super();
		this.no = no;
		this.ctg1 = ctg1;
		this.name = name;
		this.use = use;
		this.orderidx = orderidx;
	}

	public Category2Bean() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getCtg1() {
		return ctg1;
	}

	public void setCtg1(int ctg1) {
		this.ctg1 = ctg1;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUse() {
		return use;
	}

	public void setUse(String use) {
		this.use = use;
	}

	public int getOrderidx() {
		return orderidx;
	}

	public void setOrderidx(int orderidx) {
		this.orderidx = orderidx;
	}
	
	

}
