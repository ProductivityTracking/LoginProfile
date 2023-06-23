package com.spring.model;

public class ProfileModel {
	private int userid;
	private String username;
	private String password;
	private String empid;
	private int user_role;

	public ProfileModel() {

	}

	public ProfileModel(int userid, String username, String password, String empid2, int user_role2) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.empid = empid2;
		this.user_role = user_role2;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmpid() {
		return empid;
	}

	public void setEmpid(String empid) {
		this.empid = empid;
	}

	public int getUser_role() {
		return user_role;
	}

	public void setUser_role(int user_role) {
		this.user_role = user_role;
	}

	public String getUsername() {
		return username;
	}

	@Override
	public String toString() {
		return "Prof [userid=" + userid + ", username=" + username + ", password=" + password + ", empid=" + empid
				+ ", user_role=" + user_role + "]";
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void printer() {
		System.out.println("printer invoked");
		System.out.println(userid + " " + username);
	}

}
