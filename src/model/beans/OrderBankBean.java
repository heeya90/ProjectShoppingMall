package model.beans;

public class OrderBankBean {
	
	private int no;
	private String account;
	private String owner;
	private int payed;
	private int totalpay;
	private String depositeuser;
	private String depositedate;
	
	
	public OrderBankBean(int no, String account, String owner, int payed,
			int totalpay, String depositeuser, String depositedate) {
		super();
		this.no = no;
		this.account = account;
		this.owner = owner;
		this.payed = payed;
		this.totalpay = totalpay;
		this.depositeuser = depositeuser;
		this.depositedate = depositedate;
	}
	
	
	public OrderBankBean() {
		super();
	}


	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public int getPayed() {
		return payed;
	}
	public void setPayed(int payed) {
		this.payed = payed;
	}
	public int getTotalpay() {
		return totalpay;
	}
	public void setTotalpay(int totalpay) {
		this.totalpay = totalpay;
	}
	public String getDepositeuser() {
		return depositeuser;
	}
	public void setDepositeuser(String depositeuser) {
		this.depositeuser = depositeuser;
	}
	public String getDepositedate() {
		return depositedate;
	}
	public void setDepositedate(String depositedate) {
		this.depositedate = depositedate;
	}
	
}
