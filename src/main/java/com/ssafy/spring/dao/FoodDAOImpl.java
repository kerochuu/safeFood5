package com.ssafy.spring.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.ssafy.spring.vo.Food;

public class FoodDAOImpl implements FoodDAO {

	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public Food selectFood(int code) {
		return session.selectOne("food.selectFood", code);
	}

	@Override
	public List<Food> selectFoodList() {
		return session.selectList("food.selectFoodList");
	}

	@Override
	public List<Food> selectFoodWithMultiCondition(HashMap<String, Object> conditions) {
		return session.selectList("food.selectFoodWithMultiCondition", conditions);
	}

	@Override
	public List<Food> selectFoodByCodes(int[] idList) {
		return session.selectList("food.selectFoodByIds", idList);
	}



}
