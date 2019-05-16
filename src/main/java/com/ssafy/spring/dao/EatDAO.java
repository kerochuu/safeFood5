package com.ssafy.spring.dao;

import java.util.List;

import com.ssafy.spring.vo.Eat;


public interface EatDAO {
	void insertEat(Eat eat);
	
	void deleteEat(int eat_code);
	
	List<Eat> selectSeqFood(String eat_user_id);
	
}
