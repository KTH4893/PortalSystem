package kr.ac.THeVeloper.professor.model.vo;

import java.sql.Date;

public class Professor {

	private int memberNo;
	private String id;
	private String pwd;
	private String addr;
	private String email;
	
	private int age;
	private String job;
	private String phone;
	private Date enrollDate;
	private String name;
	private String gender;
	private String departDetail;
	private String status;
	
	public Professor(String id, String addr, String email, int age, String job, String phone, Date enrollDate,
			String name, String gender, String departDetail, String status) {
		super();
		this.id = id;
		this.addr = addr;
		this.email = email;
		this.age = age;
		this.job = job;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.name = name;
		this.gender = gender;
		this.departDetail = departDetail;
		this.status = status;
	}
	
	public String getDepartDetail() {
		return departDetail;
	}

	public void setDepartDetail(String departDetail) {
		this.departDetail = departDetail;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Professor() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Professor(int memberNo, String id, String pwd, String addr, String email, int age, String job,
			String phone, Date enrollDate, String name, String gender) {
		super();
		this.memberNo = memberNo;
		this.id = id;
		this.pwd = pwd;
		this.addr = addr;
		this.email = email;
		this.age = age;
		this.job = job;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.name = name;
		this.gender = gender;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getJob() {
		return job;
	}
	public void setJtatus(String job) {
		this.job = job;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
	
	
	
	
}
