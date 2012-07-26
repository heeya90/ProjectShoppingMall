package model.beans;

public class HelperBean {
	private int no;
	private String id=null;
	private String pw=null;
	private String name=null;
	private String cell=null;
	private String lastlogin=null;
	
	public HelperBean(int no, String id, String pw, String name,
			String cell, String lastlogin) {
		super();
		this.no = no;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.cell = cell;
		this.lastlogin = lastlogin;
	}
	
	public HelperBean() {
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
	public String getCell() {
		return cell;
	}
	public void setCell(String cell) {
		this.cell = cell;
	}
	public String getLastlogin() {
		return lastlogin;
	}
	public void setLastlogin(String lastlogin) {
		this.lastlogin = lastlogin;
	}
	
}
