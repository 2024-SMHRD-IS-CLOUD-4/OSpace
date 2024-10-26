package com.smhrd.model;

public class User {

	String id;
	String pw;
	String name;
	String tel;
	String address;
	int user_type;
	
	public User(String id, String pw, String name, String tel, String address, int user_type) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.address = address;
		this.user_type = user_type;
	}

	public User(String id2, String pw2, String name2, String tel2, String address2) {
		this.id = id2;
		this.pw = pw2;
		this.name = name2;
		this.tel = tel2;
		this.address = address2;
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

	public int isUser_type() {
		return user_type;
	}
	
	
	
}
