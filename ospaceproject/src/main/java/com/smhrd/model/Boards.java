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
public class Boards {
	
	int b_id;
	String b_title;
	String b_file;
	String created_at;
	int b_views;
	String id;
	String b_content;
	/*public Boards(int b_id, String b_title, String b_file, String created_at, int b_views, String id,
			String b_content) {
		super();
		this.b_id = b_id;
		this.b_title = b_title;
		this.b_file = b_file;
		this.created_at = created_at;
		this.b_views = b_views;
		this.id = id;
		this.b_content = b_content;
	}*/
	
	public int getB_id() {
		return b_id;
	}
	public String getB_title() {
		return b_title;
	}
	public String getB_file() {
		return b_file;
	}
	public String getCreated_at() {
		return created_at;
	}
	public int getB_views() {
		return b_views;
	}
	public String getId() {
		return id;
	}
	public String getB_content() {
		return b_content;
	}
	
	
	
}