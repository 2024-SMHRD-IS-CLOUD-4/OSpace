package com.smhrd.model;

public class Order {

	int orderId;
	String id;
	int totalAmount;
	int payAmount;
	String payMethod;
	int paidAmount;
	String orderedAt;
	String orderStatus;
	public Order(int orderId, String id, int totalAmount, int payAmount, String payMethod, int paidAmount,
			String orderedAt, String orderStatus) {
		super();
		this.orderId = orderId;
		this.id = id;
		this.totalAmount = totalAmount;
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
	public int getTotalAmount() {
		return totalAmount;
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
