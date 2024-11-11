package com.smhrd.model;

public class Reserved {
	int reserved_id;
	int prod_id;
	String id;
	String createdAt;
	String prod_color;
	public Reserved(int reserved_id, int prod_id, String id, String createdAt, String prod_color) {
		super();
		this.reserved_id = reserved_id;
		this.prod_id = prod_id;
		this.id = id;
		this.createdAt = createdAt;
		this.prod_color = prod_color;
	}
	public int getReserved_id() {
		return reserved_id;
	}
	public int getProd_id() {
		return prod_id;
	}
	public String getId() {
		return id;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public String getProd_color() {
		return prod_color;
	}
	
}
