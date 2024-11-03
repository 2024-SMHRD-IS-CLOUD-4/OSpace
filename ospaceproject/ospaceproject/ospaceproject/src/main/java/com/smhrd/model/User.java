package com.smhrd.model;

public class User {

	String id;
	String pw;
	String name;
	String addr;
	String phone;
	String u_type;
	String joined_at;
	public User(String id, String pw, String name, String addr, String phone, String u_type, String joined_at) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.addr = addr;
		this.phone = phone;
		this.u_type = u_type;
		this.joined_at = joined_at;
	}
	public User(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
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
	public String getAddr() {
		return addr;
	}
	public String getPhone() {
		return phone;
	}
	public String getU_type() {
		return u_type;
	}
	public String getJoined_at() {
		return joined_at;
	}
	
}