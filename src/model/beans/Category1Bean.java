package model.beans;

public class Category1Bean {
	int	no;
	String	name;
	String	use;
	int	orderidx;
	
	public Category1Bean(int no, String name, String use, int orderidx) {
		super();
		this.no = no;
		this.name = name;
		this.use = use;
		this.orderidx = orderidx;
	}
	
	public Category1Bean() {
		super();
	}
	
	@Override
	public String toString() {
		return "Category1Bean [no=" + no + ", name=" + name + ", use=" + use
				+ ", orderidx=" + orderidx + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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
