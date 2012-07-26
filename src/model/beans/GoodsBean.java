package model.beans;

public class GoodsBean {
	
	private int no;
	private String code;
	private int category1;
	private int category2;
	private String name;
	private int price;
	private int prime;
	private String company;
	private String region;
	private int content;
	private String recommand;
	private String best;
	private int sales;
	private int inventory;
	private int readcnt;
	private String redate;
	private String inputdate;
	private String use;
	
	
	public GoodsBean(int no, String code, int category1, int category2,
			String name, int price, int prime, String company, String region,
			int content, String recommand, String best, int sales,
			int inventory, int readcnt, String redate, String inputdate,
			String use) {
		super();
		this.no = no;
		this.code = code;
		this.category1 = category1;
		this.category2 = category2;
		this.name = name;
		this.price = price;
		this.prime = prime;
		this.company = company;
		this.region = region;
		this.content = content;
		this.recommand = recommand;
		this.best = best;
		this.sales = sales;
		this.inventory = inventory;
		this.readcnt = readcnt;
		this.redate = redate;
		this.inputdate = inputdate;
		this.use = use;
	}
	
	
	public GoodsBean() {
		super();
	}


	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getCategory1() {
		return category1;
	}
	public void setCategory1(int category1) {
		this.category1 = category1;
	}
	public int getCategory2() {
		return category2;
	}
	public void setCategory2(int category2) {
		this.category2 = category2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPrime() {
		return prime;
	}
	public void setPrime(int prime) {
		this.prime = prime;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public int getContent() {
		return content;
	}
	public void setContent(int content) {
		this.content = content;
	}
	public String getRecommand() {
		return recommand;
	}
	public void setRecommand(String recommand) {
		this.recommand = recommand;
	}
	public String getBest() {
		return best;
	}
	public void setBest(String best) {
		this.best = best;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public int getInventory() {
		return inventory;
	}
	public void setInventory(int inventory) {
		this.inventory = inventory;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public String getRedate() {
		return redate;
	}
	public void setRedate(String redate) {
		this.redate = redate;
	}
	public String getInputdate() {
		return inputdate;
	}
	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}
	public String getUse() {
		return use;
	}
	public void setUse(String use) {
		this.use = use;
	}
	
	
}
