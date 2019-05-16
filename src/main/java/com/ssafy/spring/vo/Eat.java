package com.ssafy.spring.vo;

public class Eat {
	int eat_code;
	String eat_user_id;
	int eat_food_code;
	String eat_food_name;
	String eat_food_material;
	
	
	public Eat(String eat_user_id, int eat_food_code, String eat_food_name, String eat_food_material) {
		super();
		this.eat_user_id = eat_user_id;
		this.eat_food_code = eat_food_code;
		this.eat_food_name = eat_food_name;
		this.eat_food_material = eat_food_material;
	}
	public Eat(String eat_user_id, int eat_food_code, String eat_food_name) {
		super();
		this.eat_user_id = eat_user_id;
		this.eat_food_code = eat_food_code;
		this.eat_food_name = eat_food_name;
	}
	public Eat() {
		super();
	}
	
	
	public int getEat_code() {
		return eat_code;
	}
	public void setEat_code(int eat_code) {
		this.eat_code = eat_code;
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
	public String getEat_user_id() {
		return eat_user_id;
	}
	public void setEat_user_id(String eat_user_id) {
		this.eat_user_id = eat_user_id;
	}
	public void setEat_food_name(String eat_food_name) {
		this.eat_food_name = eat_food_name;
	}
	public String getEat_food_material() {
		return eat_food_material;
	}
	public void setEat_food_material(String eat_food_material) {
		this.eat_food_material = eat_food_material;
	}
	
	
	@Override
	public String toString() {
		return "Eat [eat_code=" + eat_code + ", eat_user_id=" + eat_user_id + ", eat_food_code=" + eat_food_code
				+ ", eat_food_name=" + eat_food_name + ", eat_food_material=" + eat_food_material + "]";
	}

}
