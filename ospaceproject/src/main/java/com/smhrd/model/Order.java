package com.smhrd.model;

public class Order {

	int orderId;
	String id;
	String prod_ids;
	int payAmount;
	String payMethod;
	int paidAmount;
	String orderedAt;
	String orderStatus;
	public Order(int orderId, String id, String prod_ids, int payAmount, String payMethod, int paidAmount,
			String orderedAt, String orderStatus) {
		super();
		this.orderId = orderId;
		this.id = id;
		this.prod_ids = prod_ids;
		this.payAmount = payAmount;
		this.payMethod = payMethod;
		this.paidAmount = paidAmount;
		this.orderedAt = orderedAt;
		this.orderStatus = orderStatus;
	}
	
	public int getOrderId() {
		return orderId;
	}
	public String getId() {
		return id;
	}
	public String getProd_ids() {
		return prod_ids;
	}
	public int getPayAmount() {
		return payAmount;
	}
	public String getPayMethod() {
		return payMethod;
	}
	public int getPaidAmount() {
		return paidAmount;
	}
	public String getOrderedAt() {
		return orderedAt;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	
	
	
}
