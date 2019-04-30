package com.ssafy.spring.dao;

import com.ssafy.spring.vo.User;

public interface UserDAO {

	User searchById(String user_id);
	
//	User selectUserById(String id);
	
	void insertUser(User user);

	User findUserWithFoodList(int user_code);

}