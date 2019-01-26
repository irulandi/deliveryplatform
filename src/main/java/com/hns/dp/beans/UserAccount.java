package com.hns.dp.beans;

public class UserAccount {
	private int userId;
	private String Name;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	private String userName;
	private String password;
	private int OrganizationId;
	private String OrganizationName;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getOrganizationId() {
		return OrganizationId;
	}
	public void setOrganizationId(int organizationId) {
		OrganizationId = organizationId;
	}
	public String getOrganizationName() {
		return OrganizationName;
	}
	public void setOrganizationName(String organizationName) {
		OrganizationName = organizationName;
	}
}
