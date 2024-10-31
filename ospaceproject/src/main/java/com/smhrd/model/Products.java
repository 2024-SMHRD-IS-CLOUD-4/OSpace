package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
@Data
public class Products {
			int prod_id;
	 	 String id;
	 	 int category_id;
	     String prod_name;
	     String prod_img;
	     int prod_price;
	     String prod_color;
	     String prod_op;
	     String prod_desc;
}
