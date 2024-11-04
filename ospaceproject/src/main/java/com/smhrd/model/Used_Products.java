package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import java.math.BigDecimal;

@AllArgsConstructor
@Getter
@Setter
@Data
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


	public Used_Products(String id, String used_title, String used_content, int used_price, String used_location,
			String used_img) {
		super();
		this.id = id;
		this.used_title = used_title;
		this.used_content = used_content;
		this.used_price = used_price;
		this.used_location = used_location;
		this.used_img = used_img;
	}

}
