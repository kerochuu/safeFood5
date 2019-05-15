package com.ssafy.spring.vo;

public class Eat {
	int eat_code;
	int eat_user_code;
	int eat_food_code;
	String eat_food_name;
	
	public int getEat_code() {
		return eat_code;
	}
	public void setEat_code(int eat_code) {
		this.eat_code = eat_code;
	}
	public int getEat_user_code() {
		return eat_user_code;
	}
	public void setEat_user_code(int eat_user_code) {
		this.eat_user_code = eat_user_code;
	}
	public int getEat_food_code() {
		return eat_food_code;
	}
	public void setEat_food_code(int eat_food_code) {
		this.eat_food_code = eat_food_code;
	}
	public String getEat_food_name() {
		return eat_food_name;
	}
	public void setEat_food_name(String eat_food_name) {
		this.eat_food_name = eat_food_name;
	}
	public Eat(int eat_code, int eat_user_code, int eat_food_code, String eat_food_name) {
		super();
		this.eat_code = eat_code;
		this.eat_user_code = eat_user_code;
		this.eat_food_code = eat_food_code;
		this.eat_food_name = eat_food_name;
	}
	public Eat(int eat_code, int eat_user_code, int eat_food_code) {
		super();
		this.eat_code = eat_code;
		this.eat_user_code = eat_user_code;
		this.eat_food_code = eat_food_code;
	}
	public Eat() {
		super();
	}

	
	

}
