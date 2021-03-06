package com.ssafy.spring.service;

import com.ssafy.spring.vo.User;

public interface UserService {

	User searchById(String user_id);
	
	User searchByCode(int user_code);
	
//	User selectUserById(String id);
	
	boolean insertUser(User user);

	User findUserWithFoodList(int user_code);
	
	boolean changePw(User user);
	
	boolean changeInfo(User user);
	
	boolean deleteInfo(String user_id);

	void addEatList(User user);

	void addLikeList(User user);
	
	User getUser(String user_id);
	User getUser_jjim(String user_id);
}
