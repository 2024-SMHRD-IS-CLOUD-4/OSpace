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

	public Reviews(int review_id, String id, int prod_id, String review_title, String review_content, String review_img,
			int ratings, String review_tag, Date created_at) {
		super();
		this.review_id = review_id;
		this.id = id;
		this.prod_id = prod_id;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_img = review_img;
		this.ratings = ratings;
		this.review_tag = review_tag;
		this.created_at = created_at;
	}

	public int getReview_id() {
		return review_id;
	}

	public String getId() {
		return id;
	}

	public int getProd_id() {
		return prod_id;
	}

	public String getReview_title() {
		return review_title;
	}

	public String getReview_content() {
		return review_content;
	}

	public String getReview_img() {
		return review_img;
	}

	public int getRatings() {
		return ratings;
	}

	public String getReview_tag() {
		return review_tag;
	}

	public Date getCreated_at() {
		return created_at;
	}

	
}
