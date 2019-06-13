package com.entity;

/**
 * Password entity. @author MyEclipse Persistence Tools
 */

public class Password implements java.io.Serializable {
    private int index;

	private String username;
	private String password;
	private String actor;
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Password() {
		// TODO Auto-generated constructor stub
	}
	
}