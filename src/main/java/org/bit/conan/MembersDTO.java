package org.bit.conan;

public class MembersDTO {
	private String userId;
	private String userPwd;
	private String userName;
	private String address;
	private String email;
	private String phone;
	private String regDate;
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public MembersDTO() {
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
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "MembersDTO [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", address="
				+ address + ", email=" + email + ", phone=" + phone + ", regDate=" + regDate + "]";
	}
}
