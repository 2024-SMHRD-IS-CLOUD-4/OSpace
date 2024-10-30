package com.smhrd.model;

public class User {

	String id;
	String pw;
	String nick;
	String tel;
	String address;
	int user_type;
	public User(String id, String pw, String nick, String tel, String address, int user_type) {
		super();
		this.id = id;
		this.pw = pw;
		this.nick = nick;
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
		return nick;
	}
	public String getTel() {
		return tel;
	}
	public String getAddress() {
		return address;
	}
	public int getUser_type() {
		return user_type;
	}

}