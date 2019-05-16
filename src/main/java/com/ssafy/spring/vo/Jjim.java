package com.ssafy.spring.vo;

public class Jjim {
	int jjim_code;
	String jjim_user_id;
	int jjim_food_code;
	String jjim_food_name;
	int jjim_calory;
	int jjim_carbo;
	int jjim_protein;
	int jjim_fat;
	int jjim_natrium;
	
	public Jjim(String jjim_user_id, int jjim_food_code, String jjim_food_name, int jjim_calory, int jjim_carbo,
			int jjim_protein, int jjim_fat, int jjim_natrium) {
		super();
		this.jjim_user_id = jjim_user_id;
		this.jjim_food_code = jjim_food_code;
		this.jjim_food_name = jjim_food_name;
		this.jjim_calory = jjim_calory;
		this.jjim_carbo = jjim_carbo;
		this.jjim_protein = jjim_protein;
		this.jjim_fat = jjim_fat;
		this.jjim_natrium = jjim_natrium;
	}
	public Jjim(int jjim_code, String jjim_user_id, int jjim_food_code, String jjim_food_name, int jjim_calory,
			int jjim_carbo, int jjim_protein, int jjim_fat, int jjim_natrium) {
		super();
		this.jjim_code = jjim_code;
		this.jjim_user_id = jjim_user_id;
		this.jjim_food_code = jjim_food_code;
		this.jjim_food_name = jjim_food_name;
		this.jjim_calory = jjim_calory;
		this.jjim_carbo = jjim_carbo;
		this.jjim_protein = jjim_protein;
		this.jjim_fat = jjim_fat;
		this.jjim_natrium = jjim_natrium;
	}
	public int getJjim_calory() {
		return jjim_calory;
	}
	public void setJjim_calory(int jjim_calory) {
		this.jjim_calory = jjim_calory;
	}
	public int getJjim_carbo() {
		return jjim_carbo;
	}
	public void setJjim_carbo(int jjim_carbo) {
		this.jjim_carbo = jjim_carbo;
	}
	public int getJjim_protein() {
		return jjim_protein;
	}
	public void setJjim_protein(int jjim_protein) {
		this.jjim_protein = jjim_protein;
	}
	public int getJjim_fat() {
		return jjim_fat;
	}
	public void setJjim_fat(int jjim_fat) {
		this.jjim_fat = jjim_fat;
	}
	public int getJjim_natrium() {
		return jjim_natrium;
	}
	public void setJjim_natrium(int jjim_natrium) {
		this.jjim_natrium = jjim_natrium;
	}
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
