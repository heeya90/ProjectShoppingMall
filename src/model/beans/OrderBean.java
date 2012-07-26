package model.beans;

public class OrderBean {

	private int no;
	private int orderno;
	private String sname;
	private String sid;
	private String szip;
	private String saddr;
	private String sdetailaddr;
	private String stel;
	private String scell;
	private String semail;
	private String rname;
	private String rzip;
	private String raddr;
	private String rdetailaddr;
	private String rtel;
	private String rcell;
	private String paytype;
	private String paydate;
	private String senddate;
	private String enddate;
	private String delivery;
	private String nodelivery;
	private String status;
	private int sum;
	private String payed;

	
	public OrderBean(int no, int orderno, String sname, String sid, String szip,
			String saddr, String sdetailaddr, String stel, String scell,
			String semail, String rname, String rzip, String raddr,
			String rdetailaddr, String rtel, String rcell, String paytype,
			String paydate, String senddate, String enddate, String delivery,
			String nodelivery, String status, int sum, String payed) {
		super();
		this.no = no;
		this.orderno = orderno;
		this.sname = sname;
		this.sid = sid;
		this.szip = szip;
		this.saddr = saddr;
		this.sdetailaddr = sdetailaddr;
		this.stel = stel;
		this.scell = scell;
		this.semail = semail;
		this.rname = rname;
		this.rzip = rzip;
		this.raddr = raddr;
		this.rdetailaddr = rdetailaddr;
		this.rtel = rtel;
		this.rcell = rcell;
		this.paytype = paytype;
		this.paydate = paydate;
		this.senddate = senddate;
		this.enddate = enddate;
		this.delivery = delivery;
		this.nodelivery = nodelivery;
		this.status = status;
		this.sum = sum;
		this.payed = payed;
	}
	

	public OrderBean() {
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

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getSzip() {
		return szip;
	}

	public void setSzip(String szip) {
		this.szip = szip;
	}

	public String getSaddr() {
		return saddr;
	}

	public void setSaddr(String saddr) {
		this.saddr = saddr;
	}

	public String getSdetailaddr() {
		return sdetailaddr;
	}

	public void setSdetailaddr(String sdetailaddr) {
		this.sdetailaddr = sdetailaddr;
	}

	public String getStel() {
		return stel;
	}

	public void setStel(String stel) {
		this.stel = stel;
	}

	public String getScell() {
		return scell;
	}

	public void setScell(String scell) {
		this.scell = scell;
	}

	public String getSemail() {
		return semail;
	}

	public void setSemail(String semail) {
		this.semail = semail;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getRzip() {
		return rzip;
	}

	public void setRzip(String rzip) {
		this.rzip = rzip;
	}

	public String getRaddr() {
		return raddr;
	}

	public void setRaddr(String raddr) {
		this.raddr = raddr;
	}

	public String getRdetailaddr() {
		return rdetailaddr;
	}

	public void setRdetailaddr(String rdetailaddr) {
		this.rdetailaddr = rdetailaddr;
	}

	public String getRtel() {
		return rtel;
	}

	public void setRtel(String rtel) {
		this.rtel = rtel;
	}

	public String getRcell() {
		return rcell;
	}

	public void setRcell(String rcell) {
		this.rcell = rcell;
	}

	public String getPaytype() {
		return paytype;
	}

	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}

	public String getPaydate() {
		return paydate;
	}

	public void setPaydate(String paydate) {
		this.paydate = paydate;
	}

	public String getSenddate() {
		return senddate;
	}

	public void setSenddate(String senddate) {
		this.senddate = senddate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	public String getNodelivery() {
		return nodelivery;
	}

	public void setNodelivery(String nodelivery) {
		this.nodelivery = nodelivery;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public String getPayed() {
		return payed;
	}

	public void setPayed(String payed) {
		this.payed = payed;
	}
	
	

}
