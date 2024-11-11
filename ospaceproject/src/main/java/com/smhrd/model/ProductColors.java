package com.smhrd.model;

public class ProductColors {

	String color_id;
	int prod_id;
	String rgb;
	
	public ProductColors(String color_id, int prod_id, String rgb) {
		super();
		this.color_id = color_id;
		this.prod_id = prod_id;
		this.rgb = rgb;
	}
	
	public String getColor_id() {
		return color_id;
	}
	public int getProd_id() {
		return prod_id;
	}
	public String getRgb() {
		return rgb;
	}
	
}
