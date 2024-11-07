package com.smhrd.model;

public class Reports {

	int r_id;
	int prod_id;
	String id;
	String r_title;
	String r_status;
	String created_at;
	String r_content;
	public Reports(int r_id, int prod_id, String id, String r_title, String r_status, String created_at,
			String r_content) {
		super();
		this.r_id = r_id;
		this.prod_id = prod_id;
		this.id = id;
		this.r_title = r_title;
		this.r_status = r_status;
		this.created_at = created_at;
		this.r_content = r_content;
	}
	public Reports(int prod_id2, String id2, String r_title2, String r_content2) {
		// TODO Auto-generated constructor stub
	}
	public int getR_id() {
		return r_id;
	}
	public int getProd_id() {
		return prod_id;
	}
	public String getId() {
		return id;
	}
	public String getR_title() {
		return r_title;
	}
	public String getR_status() {
		return r_status;
	}
	public String getCreated_at() {
		return created_at;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public void setR_status(String r_status) {
		this.r_status = r_status;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	
}
