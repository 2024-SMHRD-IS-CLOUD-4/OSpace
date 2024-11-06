package com.smhrd.model;

public class Reserved {
	int reserved_id;
	int prod_id;
	String id;
	String createdAt;
	public Reserved(int reserved_id, int prod_id, String id, String createdAt) {
		super();
		this.reserved_id = reserved_id;
		this.prod_id = prod_id;
		this.id = id;
		this.createdAt = createdAt;
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
}
