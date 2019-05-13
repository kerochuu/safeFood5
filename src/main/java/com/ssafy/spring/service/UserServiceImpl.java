package com.ssafy.spring.service;

import com.ssafy.spring.dao.UserDAO;
import com.ssafy.spring.vo.User;

public class UserServiceImpl implements UserService {

	UserDAO userDao;
	
	
	
	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}

	@Override
	public User searchById(String user_id) {
		return userDao.searchById(user_id);
	}
	
	@Override
	public User searchByCode(int user_code) {
		return userDao.searchByCode(user_code);
	}

	@Override
	public boolean insertUser(User user) {
		if(user.getUser_id() != null ) {
			userDao.insertUser(user);
			return true;
		} 
		return false;
		
	}

	@Override
	public User findUserWithFoodList(int user_code) {
		return userDao.findUserWithFoodList(user_code);
	}

	@Override
	public boolean changePw(User user) {
		userDao.changePw(user);		
		return true;
	}

	@Override
	public boolean changeInfo(User user) {
		userDao.changeInfo(user);
		return true;
	}

	@Override
	public boolean deleteInfo(String user_id) {
		System.out.println("userService delete ->");
		userDao.deleteInfo(user_id);
		return true;
	}



}
