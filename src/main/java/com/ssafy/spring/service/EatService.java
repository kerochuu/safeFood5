package com.ssafy.spring.service;

import java.util.List;

import com.ssafy.spring.vo.Eat;

public interface EatService {
	void insertEat(Eat eat);
	
	void updateEat(Eat eat);
	
	void deleteEat(Eat eat);
	
	Eat selectEat(int eat_code);
	
	List<Eat> selectEatListByUser(int user_code);
	
}