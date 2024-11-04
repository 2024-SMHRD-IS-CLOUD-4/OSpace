package com.smhrd.model;

import java.sql.Date;

public class Used_Products {
	int used_id;
	String id;
	String used_title;
	String used_content;
	int used_price;
	String used_location;
	String used_img;
	int used_views;
	Date created_at;
	char is_sold;


	public Used_Products(int used_id, String id, String used_title, int used_price, String used_location, int used_views, String used_img, Date created_at, char is_sold, String used_content) {
		super();
		this.used_id = used_id;
		this.id = id;
		this.used_title = used_title;
		this.used_content = used_content;
		this.used_price = used_price;
		this.used_location = used_location;
		this.used_img = used_img;
		this.used_views = used_views;
		this.created_at = created_at;
		this.is_sold = is_sold;
	}

	public int getUsed_id() {
		return used_id;
	}


	public String getId() {
		return id;
	}


	public String getUsed_title() {
		return used_title;
	}


	public String getUsed_content() {
		return used_content;
	}


	public int getUsed_price() {
		return used_price;
	}


	public String getUsed_location() {
		return used_location;
	}


	public String getUsed_img() {
		return used_img;
	}


	public int getUsed_views() {
		return used_views;
	}


	public Date getCreated_at() {
		return created_at;
	}


	public char getIs_sold() {
		return is_sold;
	}
	

}
