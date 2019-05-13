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
	public void insertUser(User user) {
		userDao.insertUser(user);
	}
	
	@Override
	public void addEatList(User user) {
		userDao.addEatList(user);
	}
	
	@Override
	public void addLikeList(User user) {
		userDao.addLikeList(user);
	}

	@Override
	public User findUserWithFoodList(int user_code) {
		return userDao.findUserWithFoodList(user_code);
	}

}
