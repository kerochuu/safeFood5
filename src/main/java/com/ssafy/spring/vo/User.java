package com.ssafy.spring.vo;

import java.util.List;

public class User {
	int user_Code;
	String user_id, user_pw, user_name;

	String user_phone, user_address;
	String user_eatlist;
	String user_allergy;
	String allergy;
	String user_likelist;
	
	List<Eat> list;


	public User(int user_Code, String user_id, String user_pw, String user_name, String user_phone, String user_address,
			String user_eatlist, String user_allergy, String allergy, String user_likelist, List<Eat> list) {
		super();
		this.user_Code = user_Code;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_address = user_address;
		this.user_eatlist = user_eatlist;
		this.user_allergy = user_allergy;
		this.allergy = allergy;
		this.user_likelist = user_likelist;
		this.list = list;
	}

	public User() {	}
	
	public User(String user_id, String user_pw, String user_name, String user_phone, String user_address,
			String user_eatlist, String user_allergy, String allergy, String user_likelist) {
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_address = user_address;
		this.user_eatlist = user_eatlist;
		this.user_allergy = user_allergy;
		this.allergy = allergy;
		this.user_likelist = user_likelist;
	}
	
	public User(String user_id, String user_eatlist) {
		this.user_id = user_id;
		this.user_eatlist = user_eatlist;
	}

	public int getUser_Code() {
		return user_Code;
	}

	public void setUser_Code(int user_Code) {
		this.user_Code = user_Code;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_eatlist() {
		return user_eatlist;
	}

	public void setUser_eatlist(String user_eatList) {
		this.user_eatlist = user_eatList;
	}

	public String getUser_allergy() {
		return user_allergy;
	}

	public void setUser_allergy(String user_allergy) {
		this.user_allergy = user_allergy;
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}
	
	public String getUser_likelist() {
		return user_likelist;
	}
	public void setUser_likelist(String user_likelist) {
		this.user_likelist = user_likelist;
	}
	
	public List<Eat> getList() {
		return list;
	}
	public void setList(List<Eat> list) {
		this.list = list;
	}

	
	@Override
	public String toString() {
		return "User [user_Code=" + user_Code + ", user_id=" + user_id + ", user_pw=" + user_pw + ", user_name="
				+ user_name + ", user_phone=" + user_phone + ", user_address=" + user_address + ", user_eatlist="
				+ user_eatlist + ", user_allergy=" + user_allergy + ", allergy=" + allergy + ", user_likelist="
				+ user_likelist + ", list=" + list + "]";
	}

}
