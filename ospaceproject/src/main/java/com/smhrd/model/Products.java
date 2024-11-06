package com.smhrd.model;

import lombok.Data;

@Data


public class Products {
	
		int prod_id;
		String id;
		int category_id;
		String prod_name;
     	String prod_img;
     	int prod_price;
     	String prod_color;
     	int prod_views;
     	String createdAt;
     	String prod_op;
     	String prod_desc;
		public Products(int prod_id, String id, int category_id, String prod_name, String prod_img, int prod_price,
				String prod_color, int prod_views, String createdAt, String prod_op, String prod_desc) {
			super();
			this.prod_id = prod_id;
			this.id = id;
			this.category_id = category_id;
			this.prod_name = prod_name;
			this.prod_img = prod_img;
			this.prod_price = prod_price;
			this.prod_color = prod_color;
			this.prod_views = prod_views;
			this.createdAt = createdAt;
			this.prod_op = prod_op;
			this.prod_desc = prod_desc;
		}
		public int getProd_id() {
			return prod_id;
		}
		public String getId() {
			return id;
		}
		public int getCategory_id() {
			return category_id;
		}
		public String getProd_name() {
			return prod_name;
		}
		public String getProd_img() {
			return prod_img;
		}
		public int getProd_price() {
			return prod_price;
		}
		public String getProd_color() {
			return prod_color;
		}
		public int getProd_views() {
			return prod_views;
		}
		public String getCreatedAt() {
			return createdAt;
		}
		public String getProd_op() {
			return prod_op;
		}
		public String getProd_desc() {
			return prod_desc;
		}
		
}
