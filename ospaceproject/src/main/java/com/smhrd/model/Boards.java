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
	Date created_at;
	int b_views;
	String id;
	String b_content;
	
	
	public Boards(String b_title, String b_file, int b_views, String id, String b_content) {
		super();
		this.b_title = b_title;
		this.b_file = b_file;
		this.b_views = b_views;
		this.id = id;
		this.b_content = b_content;
	}
	
	
	
	
}
	