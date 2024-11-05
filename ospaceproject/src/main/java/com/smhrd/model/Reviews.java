package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
@NoArgsConstructor
public class Reviews {

	int review_id;
	String id;
	int prod_id;
	String review_title;
	String review_content;
	String review_img;
	int ratings;
	String review_tag;
	Date created_at;

	public Reviews(String id, int prod_id, String review_title, String review_content, String review_img,
			int ratings, String review_tag) {
		super();

		this.id = id;
		this.prod_id = prod_id;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_img = review_img;
		this.ratings = ratings;
		this.review_tag = review_tag;
	}

	
}
