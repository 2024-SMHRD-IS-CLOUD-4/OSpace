package com.smhrd.model;

public class Order {

	int order_id;
	String id;
	int pay_amount;
	String pay_method;
	int paid_amount;
	String ordered_at;
	String order_status;
	public Order(int order_id, String id, int pay_amount, String pay_method, int paid_amount, String ordered_at,
			String order_status) {
		super();
		this.order_id = order_id;
		this.id = id;
		this.pay_amount = pay_amount;
		this.pay_method = pay_method;
		this.paid_amount = paid_amount;
		this.ordered_at = ordered_at;
		this.order_status = order_status;
	}
	public int getOrder_id() {
		return order_id;
	}
	public String getId() {
		return id;
	}
	public int getPay_amount() {
		return pay_amount;
	}
	public String getPay_method() {
		return pay_method;
	}
	public int getPaid_amount() {
		return paid_amount;
	}
	public String getOrdered_at() {
		return ordered_at;
	}
	public String getOrder_status() {
		return order_status;
	}

	
}
