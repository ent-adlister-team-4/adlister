package com.codeup.adlister.models;

public class Comment {
	private long id;
	private long userId;
	private String text;

	public Comment(long id, long userId, String text) {
		this.id = id;
		this.userId = userId;
		this.text = text;
	}

	public Comment(long userId, String text) {
		this.userId = userId;
		this.text = text;
	}

	public long getId() {return id;}

	public void setId(long id) {this.id = id;}

	public long getUserId() {return userId;}

	public void setUserId(long userId) {this.userId = userId;}

	public String getText() {return text;}

	public void setText(String text) {this.text = text;}
}
