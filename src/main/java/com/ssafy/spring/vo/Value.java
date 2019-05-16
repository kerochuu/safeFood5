package com.ssafy.spring.vo;

public class Value {
	int value_code;
	String value_user_id;
	double value_calory;
	double value_carbo;
	double value_protein;
	double value_fat;
	double value_natrium;
	public Value(int value_code, String value_user_id, double value_calory, double value_carbo, double value_protein,
			double value_fat, double value_natrium) {
		super();
		this.value_code = value_code;
		this.value_user_id = value_user_id;
		this.value_calory = value_calory;
		this.value_carbo = value_carbo;
		this.value_protein = value_protein;
		this.value_fat = value_fat;
		this.value_natrium = value_natrium;
	}
	public Value(String value_user_id, double value_calory, double value_carbo, double value_protein,
			double value_fat, double value_natrium) {
		super();
		this.value_user_id = value_user_id;
		this.value_calory = value_calory;
		this.value_carbo = value_carbo;
		this.value_protein = value_protein;
		this.value_fat = value_fat;
		this.value_natrium = value_natrium;
	}
	public Value() {
		super();
	}
	public int getValue_code() {
		return value_code;
	}
	public void setValue_code(int value_code) {
		this.value_code = value_code;
	}
	public String getValue_user_id() {
		return value_user_id;
	}
	public void setValue_user_id(String value_user_id) {
		this.value_user_id = value_user_id;
	}
	
	public double getValue_calory() {
		return value_calory;
	}
	public void setValue_calory(double value_calory) {
		this.value_calory = value_calory;
	}
	public double getValue_carbo() {
		return value_carbo;
	}
	public void setValue_carbo(double value_carbo) {
		this.value_carbo = value_carbo;
	}
	public double getValue_protein() {
		return value_protein;
	}
	public void setValue_protein(double value_protein) {
		this.value_protein = value_protein;
	}
	public double getValue_fat() {
		return value_fat;
	}
	public void setValue_fat(double value_fat) {
		this.value_fat = value_fat;
	}
	public double getValue_natrium() {
		return value_natrium;
	}
	public void setValue_natrium(double value_natrium) {
		this.value_natrium = value_natrium;
	}
	public void setValue_natrium(int value_natrium) {
		this.value_natrium = value_natrium;
	}
	
	
}
