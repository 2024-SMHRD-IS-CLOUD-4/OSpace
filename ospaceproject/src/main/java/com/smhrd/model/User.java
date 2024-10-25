package com.smhrd.model;

public class User {

	String id;
	String pw;
	String name;
	String tel;
	String address;
	boolean user_type;
	
	public User(String id, String pw, String name, String tel, String address, boolean user_type) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.address = address;
		this.user_type = user_type;
	}

	public String getId() {
		return id;
	}

	public String getPw() {
		return pw;
	}

	public String getName() {
		return name;
	}

	public String getTel() {
		return tel;
	}

	public String getAddress() {
		return address;
	}

	public boolean isUser_type() {
		return user_type;
	}
	
	
	
}
