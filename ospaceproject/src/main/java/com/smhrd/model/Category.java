package com.smhrd.model;

public class Category {
	
	int category_id;
	String category_name;
	int super_category;
	public Category(int category_id, String category_name, int super_category) {
		super();
		this.category_id = category_id;
		this.category_name = category_name;
		this.super_category = super_category;
	}
	public int getCategory_id() {
		return category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public int getSuper_category() {
		return super_category;
	}
}
