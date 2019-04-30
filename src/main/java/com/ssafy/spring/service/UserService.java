package com.ssafy.spring.service;

import com.ssafy.spring.vo.User;

public interface UserService {

	User searchById(String user_id);
	
//	User selectUserById(String id);
	
	void insertUser(User user);

	User findUserWithFoodList(int user_code);
}
