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
		System.out.println("DAO까지 타고들어옴");
		session.insert("eat.insertEat", eat);
	}


	@Override
	public void deleteEat(int eat_code) {
		session.delete("eat.deleteEat", eat_code);
	}


}
