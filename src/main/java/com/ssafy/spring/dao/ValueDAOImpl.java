package com.ssafy.spring.dao;

import org.apache.ibatis.session.SqlSession;

import com.ssafy.spring.vo.Value;

public class ValueDAOImpl implements ValueDAO {

	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}


	@Override
	public void insertValue(Value value) {
		session.insert("value.insertValue", value);
		
	}

	@Override
	public void updateValue(Value value) {
		session.update("value.updateValue", value);
		
	}
	

	@Override
	public Value searchValue(String user_id) {
		return session.selectOne("value.searchValue", user_id);
	}


	@Override
	public void minusValue(Value value) {
		session.update("value.minusValue", value);
	}

}
