package com.smhrd.model;

public class Basket {

	int basket_id;
	int prod_id;
	String id;
	String createdAt;
	public Basket(int basket_id, int prod_id, String id, String createdAt) {
		super();
		this.basket_id = basket_id;
		this.prod_id = prod_id;
		this.id = id;
		this.createdAt = createdAt;
	}
	public int getBasket_id() {
		return basket_id;
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
