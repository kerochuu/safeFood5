package com.ssafy.spring.dao;


import org.apache.ibatis.session.SqlSession;

import com.ssafy.spring.vo.User;


public class UserDAOImpl implements UserDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public User searchById(String user_id) {
	
		return session.selectOne("user.searchId", user_id);
	}
	
	@Override
	public User searchByCode(int user_code) {
		return session.selectOne("user.searchCode", user_code);
	}

	@Override
	public void insertUser(User user) {
		session.insert("user.insert", user);
	}
	
	@Override
	public void addEatList(User user) {
		session.update("user.addEatList", user);
	}
	
	@Override
	public void addLikeList(User user) {
		session.update("user.addLikeList", user);
	}

	@Override
	public User findUserWithFoodList(int user_code) {
		return session.selectOne("findUserWithFoodList", user_code);
	}

	@Override
	public int changePw(User user) {
		return session.update("user.changePw", user);
	}

	@Override
	public int changeInfo(User user) {
		return session.update("user.changeInfo", user);
	}

	@Override
	public int deleteInfo(String user_id) {
		return session.delete("user.deleteInfo", user_id);
	}


}
