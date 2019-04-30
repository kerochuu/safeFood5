package com.ssafy.spring.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ssafy.spring.dao.FoodDAO;
import com.ssafy.spring.vo.Food;

public class FoodServiceImpl implements FoodService{

	private FoodDAO foodDao;
	
	@Autowired
	public void setFoodDao(FoodDAO foodDao) {
		this.foodDao = foodDao;
	}

	@Override
	public Food selectFood(int code) {
		return foodDao.selectFood(code);
	}

	@Override
	public List<Food> selectFoodList() {
		return foodDao.selectFoodList();
	}

	@Override
	public List<Food> selectFoodWithMultiCondition(HashMap<String, Object> conditions) {
		return foodDao.selectFoodWithMultiCondition(conditions);
	}

	@Override
	public List<Food> selectFoodByCodes(int[] codes) {
		return foodDao.selectFoodByCodes(codes);
	}




	
	
}
