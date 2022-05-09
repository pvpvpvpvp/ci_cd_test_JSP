package org.bit.conan;

public class Members {
	private String userId;
	private String userPwd;
	private String userName;
	private String address;
	private String email;
	private String phone;
	
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	private java.util.Date regDate;
	
	
	public Members() {
		this.userId = "";
		this.userName = "";
		this.email="";
		this.userPwd="";
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public java.util.Date getRegDate() {
		return regDate;
	}
	public void setRegDate(java.util.Date regDate) {
		this.regDate = regDate;
	}
	
}
