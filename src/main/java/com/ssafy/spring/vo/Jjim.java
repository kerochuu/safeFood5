package com.ssafy.spring.vo;

public class Jjim {
	int jjim_code;
	String jjim_user_id;
	int jjim_food_code;
	String jjim_food_name;
	
	public int getJjim_code() {
		return jjim_code;
	}
	public void setJjim_code(int jjim_code) {
		this.jjim_code = jjim_code;
	}
	
	public int getJjim_food_code() {
		return jjim_food_code;
	}
	public void setJjim_food_code(int jjim_food_code) {
		this.jjim_food_code = jjim_food_code;
	}
	public String getJjim_food_name() {
		return jjim_food_name;
	}
	public void setJjim_food_name(String jjim_food_name) {
		this.jjim_food_name = jjim_food_name;
	}
	public Jjim(int jjim_code) {
		super();
		this.jjim_code = jjim_code;
	}
	
	public Jjim(String jjim_user_id, int jjim_food_code, String jjim_food_name) {
		super();
		this.jjim_user_id = jjim_user_id;
		this.jjim_food_code = jjim_food_code;
		this.jjim_food_name = jjim_food_name;
	}
	public Jjim(int jjim_code, String jjim_user_id, int jjim_food_code, String jjim_food_name) {
		super();
		this.jjim_code = jjim_code;
		this.jjim_user_id = jjim_user_id;
		this.jjim_food_code = jjim_food_code;
		this.jjim_food_name = jjim_food_name;
	}
	public String getJjim_user_id() {
		return jjim_user_id;
	}
	public void setJjim_user_id(String jjim_user_id) {
		this.jjim_user_id = jjim_user_id;
	}
	public Jjim() {
		super();
	}
	

}
