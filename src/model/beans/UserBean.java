package model.beans;

public class UserBean {
	int no;
	String id;
	String pw;
	String name;
	String tel;
	String cell;
	String zipcode;
	String addr;
	String detailaddr;
	String email;
	String use;
	int logincnt;
	int point;
	String grade;
	String lastlogin;
	String regdate;
	
	public UserBean(int no, String id, String pw, String name, String tel,
			String cell, String zipcode, String addr, String detailaddr,
			String email, String use, int logincnt, int point, String grade,
			String lastlogin, String regdate) {
		super();
		this.no = no;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.cell = cell;
		this.zipcode = zipcode;
		this.addr = addr;
		this.detailaddr = detailaddr;
		this.email = email;
		this.use = use;
		this.logincnt = logincnt;
		this.point = point;
		this.grade = grade;
		this.lastlogin = lastlogin;
		this.regdate = regdate;
	}

	public UserBean() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getCell() {
		return cell;
	}

	public void setCell(String cell) {
		this.cell = cell;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getDetailaddr() {
		return detailaddr;
	}

	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUse() {
		return use;
	}

	public void setUse(String use) {
		this.use = use;
	}

	public int getLogincnt() {
		return logincnt;
	}

	public void setLogincnt(int logincnt) {
		this.logincnt = logincnt;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getLastlogin() {
		return lastlogin;
	}

	public void setLastlogin(String lastlogin) {
		this.lastlogin = lastlogin;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	

}
