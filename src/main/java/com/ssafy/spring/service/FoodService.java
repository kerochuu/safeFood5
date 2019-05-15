package com.ssafy.spring.service;

import java.util.HashMap;
import java.util.List;

import com.ssafy.spring.vo.Food;

public interface FoodService {
	Food selectFood(int code);	

	List<Food> selectFoodList();
	
	List<Food> selectFoodByName(String key);

	List<Food> selectFoodByMaker(String key);

	List<Food> selectFoodByMaterial(String key);

	List<Food> selectFoodByAllergy(String key);

//	List<Food> selectFoodWithMultiCondition(HashMap<String, Object> conditions);

	//List<Food> selectFoodByCodes(int[] codes);
	
}
