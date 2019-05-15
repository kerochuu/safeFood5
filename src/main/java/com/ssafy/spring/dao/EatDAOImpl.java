package com.ssafy.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.ssafy.spring.vo.Eat;

public class EatDAOImpl implements EatDAO {
	
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public void insertEat(Eat eat) {
		session.insert("eat.insert", eat);
	}

	@Override
	public void updateEat(Eat eat) {
		session.update("eat.update", eat);
	}

	@Override
	public void deleteEat(Eat eat) {
		session.delete("eat.delete", eat);
	}

	@Override
	public Eat selectEat(int eat_code) {
		return session.selectOne("eat.selectId", eat_code);
	}

	@Override
	public List<Eat> selectEatListByUser(int user_code) {
		return session.selectList("eat.selectList", user_code);
	}

}
