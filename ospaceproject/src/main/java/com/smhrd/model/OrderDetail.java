package com.smhrd.model;

public class OrderDetail {

	int orderd_id;
	int order_id;
	String color_id;
	String createdAt;
	public OrderDetail(int orderd_id, int order_id, String color_id, String createdAt) {
		super();
		this.orderd_id = orderd_id;
		this.order_id = order_id;
		this.color_id = color_id;
		this.createdAt = createdAt;
	}
	public int getOrderd_id() {
		return orderd_id;
	}
	public int getOrder_id() {
		return order_id;
	}
	public String getColor_id() {
		return color_id;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	
}
