package kr.ac.THeVeloper.admin.model.vo;

public class Admin {
	private String adminId;
	private String adminPw;
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin(String adminId, String adminPw) {
		super();
		this.adminId = adminId;
		this.adminPw = adminPw;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPw() {
		return adminPw;
	}
	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}
	
	
	
	
}
