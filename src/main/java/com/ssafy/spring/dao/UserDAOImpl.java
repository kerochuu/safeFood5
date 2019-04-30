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
	
		return session.selectOne("user.search", user_id);
	}

	@Override
	public void insertUser(User user) {
		session.insert("user.insert", user);
		
	}

	@Override
	public User findUserWithFoodList(int user_code) {
		return session.selectOne("findUserWithFoodList", user_code);
	}

	
	


}
