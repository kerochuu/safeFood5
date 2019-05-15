package com.ssafy.spring.dao;

import com.ssafy.spring.vo.User;

public interface UserDAO {

	User searchById(String user_id);
	
//	User selectUserById(String id);
	
	void insertUser(User user);

	User findUserWithFoodList(int user_code);
	
	User searchByCode(int user_code);
	
	int changePw(User user);
	
	int changeInfo(User user);
	
	int deleteInfo(String user_id);

	void addEatList(User user);

	void addLikeList(User user);

	User getUser(String user_id);
	
	User getUser_jjim(String user_id);
}